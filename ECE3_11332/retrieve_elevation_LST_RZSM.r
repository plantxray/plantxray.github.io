# Retrieve elevation, LST, and RZSM

# Retrieve elevaton values

library(rgbif)
user <- Sys.getenv("username")
Data <- read.csv("location_data.csv", header = TRUE)
Altitudes <- elevation(latitude = Data$Lat,
  longitude = Data$Long,
  username = "username", verbose = TRUE)
elevation(latitude = lats, longitude = lons, elevation_model = "srtm3")
write.csv(Altitudes, elevation_data.csv")


# Retrieve land surface temperature (LST) values

# Load necessary libraries for data manipulation and plotting
library(rgdal)
library(gdalUtils)
library(raster)
library(ggmap)
library(rasterVis)
library(RColorBrewer)
library(gplots)
library(ggplot2)
library(dplyr)
library(terra)

# Load plant coordinate file and prepare for temperature extraction
WD3 <- read.csv("Plant coordinates from GBIF.csv", header = TRUE)

# Initialize an empty data frame to store temperature observations
all_ex_observations <- data.frame()

# Loop through each month to process and extract temperature data
for (month in 1:12) {
  month_str <- sprintf("%02d", month) # Format month to two digits
  file_name <- paste0("2001-", month_str, ".hdf") # Construct file name based on year and month

  # Read and process temperature data from HDF files
  sds <- get_subdatasets(file_name)  # Get subdatasets from HDF file
  d5 <- readGDAL(sds[1], options=c("RASTERXDIM=4","RASTERYDIM=3","RASTERBDIM=2","RASTER4DIM=1","RASTER5DIM=0"))
  
  r <- raster(d5) # Convert data to raster format
  s2 <- rast(r)   # Convert to terra format for further processing
  s3 <- s2$band1 - 273.15  # Convert Kelvin to Celsius

  # Extract temperature for each site using coordinates
  site_observations <- cbind(WD3[c("Long", "Lat")])
  ex_observations <- extract(s3, site_observations)
  ex_observations <- cbind(Month = month_str, ex_observations)  # Add month information

  # Combine data from the current month with the overall dataset
  all_ex_observations <- rbind(all_ex_observations, ex_observations)
}

# Save the combined yearly temperature data to a CSV file
write.csv(all_ex_observations, "ex_observations_2001_all_months_pre.csv", row.names = FALSE)

# Transform the data to make it suitable for copy/pasting into documents or further analysis
data <- read.csv("ex_observations_2001_all_months_pre.csv")
data_new <- data %>%
  group_by(Month) %>%
  mutate(row_number = row_number()) %>%
  pivot_wider(names_from = Month, values_from = c(-Month, -row_number), names_prefix = "Temperature_") %>%
  rename_with(~paste0(., "_2001"), everything())  # Rename columns to include year

# Save the transformed data to a new CSV file
write.csv(data_new, "ex_observations_2001_all_months_final.csv", row.names = FALSE)

# Retrieve Root-zone soil moisture (RZSM) values

# Load required libraries for data handling and raster manipulation
library(ncdf4)
library(raster)

# Define the year of interest and create vector of months
year <- 2005
months <- sprintf("%02d", 1:12)  # Format months to two digits

# Prepare to collect moisture data for all months
all_moisture_data <- list()

# Loop through each month, read NC4 files, and extract root-zone soil moisture
for (month in months) {
  file_path <- paste0('GRACE_', year, '-', month, '.nc4') # Construct file path dynamically
  
  # Open NC4 file
  nc_data <- nc_open(file_path)
  
  # Extract longitude, latitude, time, and soil moisture variables
  lon <- ncvar_get(nc_data, "lon")
  lat <- ncvar_get(nc_data, "lat")
  time <- ncvar_get(nc_data, "time")
  soil_moisture <- ncvar_get(nc_data, "rtzsm_inst")
  
  # Close NC4 file
  nc_close(nc_data)
  
  # Create a raster object from the extracted soil moisture data
  moisture_raster <- raster(t(soil_moisture), xmn=min(lon), xmx=max(lon), ymn=min(lat), ymx=max(lat))
  
  # Flip the raster vertically
  moisture_raster <- flip(moisture_raster, direction='y')
  
  # Read plant coordinate file if not already read (comment this line if already done outside the loop)
  # plant_coords <- read.csv("All_Orobanchaceae_2001_2022.csv", header = TRUE)
  
  # Extract soil moisture data for plant locations and store in the list
  site_coords <- cbind(plant_coords[c("Long", "Lat")])
  extracted_moisture <- extract(moisture_raster, site_coords)
  
  # Append the extracted data to the list with a new column for the month
  all_moisture_data[[month]] <- cbind(Month = month, extracted_moisture)
}

# Combine all monthly data into one dataframe
combined_moisture_data <- do.call(rbind, all_moisture_data)

# Write the combined data to a CSV file
write.csv(combined_moisture_data, paste0("All_Orobanchaceae_moistures_", year, ".csv"), row.names = FALSE)