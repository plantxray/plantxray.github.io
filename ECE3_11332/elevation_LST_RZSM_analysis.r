# Analyze Elevation, LST, and RZSM per species

# Boxplots for LST, RZSM, and elevation per species
# Adjust to use for Elevation, Temperature, or Moisture

library(dplyr)
library(purrr)
library(ggplot2)
library(multcompView)

Orobanchaceae_curated_list_Orobanchaceae <- read.csv("Input.csv", header = TRUE)
Orobanchaceae_curated_list_Orobanchaceae_since_2011 <- filter(Input, Year >= 2006)

# Set threshold (optional, adjust if a species has too many data points to be displayed)
threshold <- 50000

# Define your custom colors
custom_colors <- c("Striga asiatica" = "#F2003C",
                   "Striga hermonthica" = "magenta",
                   "Striga gesnerioides" = "#FFC0CB",
                   "Orobanche minor" = "#1C1CF0",
                   "Orobanche crenata" = "#CCCCFF",
                   "Orobanche cumana" = "cyan",
                   "Phelipanche ramosa" = "#00A550",
                   "Phelipanche aegyptiaca" = "#39FF14")

# Calculate group sizes and filter
Orobanchaceae_curated_list_Orobanchaceae_since_2011 <- Orobanchaceae_curated_list_Orobanchaceae_since_2011 %>%
  add_count(Species) %>%
  filter(n <= threshold | row_number() <= threshold)

anova <- aov(Moisture_month_prior2 ~ Species, data = Orobanchaceae_curated_list_Orobanchaceae_since_2011)
tukey <- TukeyHSD(anova)
significant_letters <- multcompLetters4(anova, tukey)
Tk <- Orobanchaceae_curated_list_Orobanchaceae_since_2011 %>%
  group_by(Species) %>%
  summarise(
    mean = mean(Moisture_month_prior2, na.rm = TRUE), 
    min = min(Moisture_month_prior2, na.rm = TRUE), 
    max = max(Moisture_month_prior2, na.rm = TRUE),
    quant = quantile(Moisture_month_prior2, probs = 0.75, na.rm = TRUE)
  ) %>%
  arrange(desc(mean))
significant_letters <- as.data.frame.list(significant_letters$Species)
Tk$significant_letters <- significant_letters$Letters

# Create boxplots
boxplot <- ggplot(data = Orobanchaceae_curated_list_Orobanchaceae_since_2011, aes(group = Species, x = Species, y = Moisture_month_prior2)) + 
  geom_boxplot(aes(fill = Species)) +
  geom_jitter(aes(fill = Species), color = "black", shape = 21, width = 0.05, size = 0.5, alpha = 1) +
  scale_fill_manual(values = custom_colors) +
  scale_color_manual(values = custom_colors) +
  theme(axis.text.x = element_text(face = "italic", angle = 20)) +  
  theme(panel.background = element_blank()) + 
  theme(axis.line = element_line(colour = "black")) +
  theme(panel.grid = element_line(color = "grey", size = 0.25)) +
  theme(legend.position = "none") +
  geom_text(data = Tk, aes(x = Species, y = quant, label = significant_letters), size = 3, color = "black", vjust = -1, hjust = -1) +
  scale_y_continuous(breaks = seq(0, 100, 10))

ggsave("Striga and Orobanche species vs. Moisture_month_prior2 boxplot.png", width = 4.25, height = 4.25, dpi = 300, plot = boxplot)
ggsave("Striga and Orobanche species vs. Moisture_month_prior2 boxplot.svg", width = 4.25, height = 4.25, plot = boxplot)
print(boxplot)
write.csv(Tk, file = "Tk-Moisture_month_prior2 boxplot.csv")


#Create PCA biplots for elevation, LST, and RZSM per species


library(tidyverse)
library(ggplot2)
library(factoextra) 

# Load your data
data <- read.csv("Input.csv")
unique_species <- unique(data$Species)

# Initialize an empty data frame to store PCA loadings for all species
all_pca_loadings <- data.frame()

for(species in unique_species) {
  filtered_data <- data %>%
    filter(Species == species) %>%
    select(Elevation, Temperature_month_prior1, Temperature_month_prior2, Moisture_month_prior1, Moisture_month_prior2) %>%
    na.omit()
  
  if(nrow(filtered_data) > 2) {
    standardized_data <- scale(filtered_data)
    pca_result <- prcomp(standardized_data)
    
    # Convert PCA loadings to a data frame
    loadings_df <- as.data.frame(pca_result$rotation)
    # Add a column for the species name
    loadings_df$Species <- species
    
    # Append to the accumulator data frame
    all_pca_loadings <- rbind(all_pca_loadings, loadings_df)
    
    # Creating PCA biplot with factoextra for a more interactive visualization
    pca_biplot <- fviz_pca_biplot(pca_result,
                                  geom.ind = "point", # Use points for individuals
                                  geom.var = c("arrow", "text"), # Use arrows and text for variables
                                  labelsize = 3, # Adjust size of variable names
                                  title = paste("PCA Biplot of", species),
                                  palette = c("#00AFBB", "#E7B800")) +
      theme(text = element_text(size = 10), # Adjusting global text size, including title and axis labels
            plot.title = element_text(size = 12), # Specifically making the title text smaller
            axis.title = element_text(size = 10)) # Making axis labels smaller
    
    # Filenames for the plots
    biplot_png_filename <- paste("Biplot_", gsub(" ", "_", species), ".png", sep = "")
    biplot_svg_filename <- paste("Biplot_", gsub(" ", "_", species), ".svg", sep = "")
    
    # Save the biplot as PNG
    ggsave(biplot_png_filename, pca_biplot, width = 10, height = 8)
    
    # Save the biplot as SVG
    ggsave(biplot_svg_filename, pca_biplot, device = "svg", width = 4.25, height = 2.75)
    
  } else {
    print(paste("Not enough data for species:", species, "to perform PCA."))
  }
}

# Save all PCA loadings to a CSV file
write.csv(all_pca_loadings, "All_PCA_Loadings.csv")

# Analyze data until 2018 and from 2019 separately

library(tidyverse)
library(ggplot2)
library(factoextra) 

# Define the function to analyze each period before the loop
analyze_period <- function(filtered_data, species, period, all_pca_loadings) {
  standardized_data <- scale(filtered_data)
  pca_result <- prcomp(standardized_data)
  
  # Convert PCA loadings to a data frame
  loadings_df <- as.data.frame(pca_result$rotation)
  # Add columns for the species name and period
  loadings_df$Species <- species
  loadings_df$Period <- period
  
  # Append to the accumulator data frame
  all_pca_loadings <<- rbind(all_pca_loadings, loadings_df)
  
  # Creating PCA biplot
  pca_biplot <- fviz_pca_biplot(pca_result,
                                geom.ind = "point", # Use points for individuals
                                geom.var = c("arrow", "text"), # Use arrows and text for variables
                                labelsize = 3, # Adjust size of variable names
                                title = paste("PCA Biplot of", species, "in", period, "Period"),
                                palette = c("#00AFBB", "#E7B800")) +
    theme(text = element_text(size = 10),
          plot.title = element_text(size = 12),
          axis.title = element_text(size = 10))
  
  # Filenames for the plots
  biplot_png_filename <- paste("Biplot_", gsub(" ", "_", species), "_", period, ".png", sep = "")
  biplot_svg_filename <- paste("Biplot_", gsub(" ", "_", species), "_", period, ".svg", sep = "")
  
  # Save the biplot as PNG
  ggsave(biplot_png_filename, pca_biplot, width = 10, height = 8)
  
  # Save the biplot as SVG
  ggsave(biplot_svg_filename, pca_biplot, device = "svg", width = 4.25, height = 2.75)
}

# Load your data
data <- read.csv("Input.csv")
unique_species <- unique(data$Species)

# Initialize an empty data frame to store PCA loadings for all species
all_pca_loadings <- data.frame()

for(species in unique_species) {
  filtered_data_early <- data %>%
    filter(Species == species, Year <= 2018) %>%
    select(Elevation, Temperature_month_prior1, Temperature_month_prior2, Moisture_month_prior1, Moisture_month_prior2) %>%
    na.omit()
  
  filtered_data_late <- data %>%
    filter(Species == species, Year > 2018) %>%
    select(Elevation, Temperature_month_prior1, Temperature_month_prior2, Moisture_month_prior1, Moisture_month_prior2) %>%
    na.omit()
  
  # Analyzing early period data
  if(nrow(filtered_data_early) > 2) {
    analyze_period(filtered_data_early, species, "Early", all_pca_loadings)
  } else {
    print(paste("Not enough early period data for species:", species, "to perform PCA."))
  }
  
  # Analyzing late period data
  if(nrow(filtered_data_late) > 2) {
    analyze_period(filtered_data_late, species, "Late", all_pca_loadings)
  } else {
    print(paste("Not enough late period data for species:", species, "to perform PCA."))
  }
}

# Save all PCA loadings to a CSV file
write.csv(all_pca_loadings, "All_PCA_Loadings_until_2018_and_from_2019.csv")
