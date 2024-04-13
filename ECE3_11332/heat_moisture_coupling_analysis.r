# Heat-moisture couplings

# Create a new file that keeps temperature and moisture of current month of observation and the 2 months prior

# Read your CSV file into a data frame
data <- read.csv("Input file containing LST and RZSM.csv")

# Use mutate and select to create new columns with the relevant temperature and moisture data
filtered_data <- data %>%
  mutate(Temperature_month_current = case_when(
           Month == 1 & Year == 2001 ~ Temperature_01_2001,
           Month == 2 & Year == 2001 ~ Temperature_02_2001,
		   Month == 3 & Year == 2001 ~ Temperature_03_2001,
  Month == 4 & Year == 2001 ~ Temperature_04_2001,
  Month == 5 & Year == 2001 ~ Temperature_05_2001,
  Month == 6 & Year == 2001 ~ Temperature_06_2001,
  Month == 7 & Year == 2001 ~ Temperature_07_2001,
  Month == 8 & Year == 2001 ~ Temperature_08_2001,
  Month == 9 & Year == 2001 ~ Temperature_09_2001,
  Month == 10 & Year == 2001 ~ Temperature_10_2001,
  Month == 11 & Year == 2001 ~ Temperature_11_2001,
  Month == 12 & Year == 2001 ~ Temperature_12_2001,
           Month == 1 & Year == 2002 ~ Temperature_01_2002,
           Month == 2 & Year == 2002 ~ Temperature_02_2002,
		   Month == 3 & Year == 2002 ~ Temperature_03_2002,
  Month == 4 & Year == 2002 ~ Temperature_04_2002,
  Month == 5 & Year == 2002 ~ Temperature_05_2002,
  Month == 6 & Year == 2002 ~ Temperature_06_2002,
  Month == 7 & Year == 2002 ~ Temperature_07_2002,
  Month == 8 & Year == 2002 ~ Temperature_08_2002,
  Month == 9 & Year == 2002 ~ Temperature_09_2002,
  Month == 10 & Year == 2002 ~ Temperature_10_2002,
  Month == 11 & Year == 2002 ~ Temperature_11_2002,
  Month == 12 & Year == 2002 ~ Temperature_12_2002,
           Month == 1 & Year == 2003 ~ Temperature_01_2003,
           Month == 2 & Year == 2003 ~ Temperature_02_2003,
		   Month == 3 & Year == 2003 ~ Temperature_03_2003,
  Month == 4 & Year == 2003 ~ Temperature_04_2003,
  Month == 5 & Year == 2003 ~ Temperature_05_2003,
  Month == 6 & Year == 2003 ~ Temperature_06_2003,
  Month == 7 & Year == 2003 ~ Temperature_07_2003,
  Month == 8 & Year == 2003 ~ Temperature_08_2003,
  Month == 9 & Year == 2003 ~ Temperature_09_2003,
  Month == 10 & Year == 2003 ~ Temperature_10_2003,
  Month == 11 & Year == 2003 ~ Temperature_11_2003,
  Month == 12 & Year == 2003 ~ Temperature_12_2003,
           Month == 1 & Year == 2004 ~ Temperature_01_2004,
           Month == 2 & Year == 2004 ~ Temperature_02_2004,
		   Month == 3 & Year == 2004 ~ Temperature_03_2004,
  Month == 4 & Year == 2004 ~ Temperature_04_2004,
  Month == 5 & Year == 2004 ~ Temperature_05_2004,
  Month == 6 & Year == 2004 ~ Temperature_06_2004,
  Month == 7 & Year == 2004 ~ Temperature_07_2004,
  Month == 8 & Year == 2004 ~ Temperature_08_2004,
  Month == 9 & Year == 2004 ~ Temperature_09_2004,
  Month == 10 & Year == 2004 ~ Temperature_10_2004,
  Month == 11 & Year == 2004 ~ Temperature_11_2004,
  Month == 12 & Year == 2004 ~ Temperature_12_2004,
           Month == 1 & Year == 2005 ~ Temperature_01_2005,
           Month == 2 & Year == 2005 ~ Temperature_02_2005,
		   Month == 3 & Year == 2005 ~ Temperature_03_2005,
  Month == 4 & Year == 2005 ~ Temperature_04_2005,
  Month == 5 & Year == 2005 ~ Temperature_05_2005,
  Month == 6 & Year == 2005 ~ Temperature_06_2005,
  Month == 7 & Year == 2005 ~ Temperature_07_2005,
  Month == 8 & Year == 2005 ~ Temperature_08_2005,
  Month == 9 & Year == 2005 ~ Temperature_09_2005,
  Month == 10 & Year == 2005 ~ Temperature_10_2005,
  Month == 11 & Year == 2005 ~ Temperature_11_2005,
  Month == 12 & Year == 2005 ~ Temperature_12_2005,
           Month == 1 & Year == 2006 ~ Temperature_01_2006,
           Month == 2 & Year == 2006 ~ Temperature_02_2006,
		   Month == 3 & Year == 2006 ~ Temperature_03_2006,
  Month == 4 & Year == 2006 ~ Temperature_04_2006,
  Month == 5 & Year == 2006 ~ Temperature_05_2006,
  Month == 6 & Year == 2006 ~ Temperature_06_2006,
  Month == 7 & Year == 2006 ~ Temperature_07_2006,
  Month == 8 & Year == 2006 ~ Temperature_08_2006,
  Month == 9 & Year == 2006 ~ Temperature_09_2006,
  Month == 10 & Year == 2006 ~ Temperature_10_2006,
  Month == 11 & Year == 2006 ~ Temperature_11_2006,
  Month == 12 & Year == 2006 ~ Temperature_12_2006,
            Month == 1 & Year == 2007 ~ Temperature_01_2007,
           Month == 2 & Year == 2007 ~ Temperature_02_2007,
		   Month == 3 & Year == 2007 ~ Temperature_03_2007,
  Month == 4 & Year == 2007 ~ Temperature_04_2007,
  Month == 5 & Year == 2007 ~ Temperature_05_2007,
  Month == 6 & Year == 2007 ~ Temperature_06_2007,
  Month == 7 & Year == 2007 ~ Temperature_07_2007,
  Month == 8 & Year == 2007 ~ Temperature_08_2007,
  Month == 9 & Year == 2007 ~ Temperature_09_2007,
  Month == 10 & Year == 2007 ~ Temperature_10_2007,
  Month == 11 & Year == 2007 ~ Temperature_11_2007,
  Month == 12 & Year == 2007 ~ Temperature_12_2007,
            Month == 1 & Year == 2008 ~ Temperature_01_2008,
           Month == 2 & Year == 2008 ~ Temperature_02_2008,
		   Month == 3 & Year == 2008 ~ Temperature_03_2008,
  Month == 4 & Year == 2008 ~ Temperature_04_2008,
  Month == 5 & Year == 2008 ~ Temperature_05_2008,
  Month == 6 & Year == 2008 ~ Temperature_06_2008,
  Month == 7 & Year == 2008 ~ Temperature_07_2008,
  Month == 8 & Year == 2008 ~ Temperature_08_2008,
  Month == 9 & Year == 2008 ~ Temperature_09_2008,
  Month == 10 & Year == 2008 ~ Temperature_10_2008,
  Month == 11 & Year == 2008 ~ Temperature_11_2008,
  Month == 12 & Year == 2008 ~ Temperature_12_2008,
            Month == 1 & Year == 2009 ~ Temperature_01_2009,
           Month == 2 & Year == 2009 ~ Temperature_02_2009,
		   Month == 3 & Year == 2009 ~ Temperature_03_2009,
  Month == 4 & Year == 2009 ~ Temperature_04_2009,
  Month == 5 & Year == 2009 ~ Temperature_05_2009,
  Month == 6 & Year == 2009 ~ Temperature_06_2009,
  Month == 7 & Year == 2009 ~ Temperature_07_2009,
  Month == 8 & Year == 2009 ~ Temperature_08_2009,
  Month == 9 & Year == 2009 ~ Temperature_09_2009,
  Month == 10 & Year == 2009 ~ Temperature_10_2009,
  Month == 11 & Year == 2009 ~ Temperature_11_2009,
  Month == 12 & Year == 2009 ~ Temperature_12_2009,
            Month == 1 & Year == 2010 ~ Temperature_01_2010,
           Month == 2 & Year == 2010 ~ Temperature_02_2010,
		   Month == 3 & Year == 2010 ~ Temperature_03_2010,
  Month == 4 & Year == 2010 ~ Temperature_04_2010,
  Month == 5 & Year == 2010 ~ Temperature_05_2010,
  Month == 6 & Year == 2010 ~ Temperature_06_2010,
  Month == 7 & Year == 2010 ~ Temperature_07_2010,
  Month == 8 & Year == 2010 ~ Temperature_08_2010,
  Month == 9 & Year == 2010 ~ Temperature_09_2010,
  Month == 10 & Year == 2010 ~ Temperature_10_2010,
  Month == 11 & Year == 2010 ~ Temperature_11_2010,
  Month == 12 & Year == 2010 ~ Temperature_12_2010,
            Month == 1 & Year == 2011 ~ Temperature_01_2011,
           Month == 2 & Year == 2011 ~ Temperature_02_2011,
		   Month == 3 & Year == 2011 ~ Temperature_03_2011,
  Month == 4 & Year == 2011 ~ Temperature_04_2011,
  Month == 5 & Year == 2011 ~ Temperature_05_2011,
  Month == 6 & Year == 2011 ~ Temperature_06_2011,
  Month == 7 & Year == 2011 ~ Temperature_07_2011,
  Month == 8 & Year == 2011 ~ Temperature_08_2011,
  Month == 9 & Year == 2011 ~ Temperature_09_2011,
  Month == 10 & Year == 2011 ~ Temperature_10_2011,
  Month == 11 & Year == 2011 ~ Temperature_11_2011,
  Month == 12 & Year == 2011 ~ Temperature_12_2011,
            Month == 1 & Year == 2012 ~ Temperature_01_2012,
           Month == 2 & Year == 2012 ~ Temperature_02_2012,
		   Month == 3 & Year == 2012 ~ Temperature_03_2012,
  Month == 4 & Year == 2012 ~ Temperature_04_2012,
  Month == 5 & Year == 2012 ~ Temperature_05_2012,
  Month == 6 & Year == 2012 ~ Temperature_06_2012,
  Month == 7 & Year == 2012 ~ Temperature_07_2012,
  Month == 8 & Year == 2012 ~ Temperature_08_2012,
  Month == 9 & Year == 2012 ~ Temperature_09_2012,
  Month == 10 & Year == 2012 ~ Temperature_10_2012,
  Month == 11 & Year == 2012 ~ Temperature_11_2012,
  Month == 12 & Year == 2012 ~ Temperature_12_2012,
            Month == 1 & Year == 2013 ~ Temperature_01_2013,
           Month == 2 & Year == 2013 ~ Temperature_02_2013,
		   Month == 3 & Year == 2013 ~ Temperature_03_2013,
  Month == 4 & Year == 2013 ~ Temperature_04_2013,
  Month == 5 & Year == 2013 ~ Temperature_05_2013,
  Month == 6 & Year == 2013 ~ Temperature_06_2013,
  Month == 7 & Year == 2013 ~ Temperature_07_2013,
  Month == 8 & Year == 2013 ~ Temperature_08_2013,
  Month == 9 & Year == 2013 ~ Temperature_09_2013,
  Month == 10 & Year == 2013 ~ Temperature_10_2013,
  Month == 11 & Year == 2013 ~ Temperature_11_2013,
  Month == 12 & Year == 2013 ~ Temperature_12_2013,
            Month == 1 & Year == 2014 ~ Temperature_01_2014,
           Month == 2 & Year == 2014 ~ Temperature_02_2014,
		   Month == 3 & Year == 2014 ~ Temperature_03_2014,
  Month == 4 & Year == 2014 ~ Temperature_04_2014,
  Month == 5 & Year == 2014 ~ Temperature_05_2014,
  Month == 6 & Year == 2014 ~ Temperature_06_2014,
  Month == 7 & Year == 2014 ~ Temperature_07_2014,
  Month == 8 & Year == 2014 ~ Temperature_08_2014,
  Month == 9 & Year == 2014 ~ Temperature_09_2014,
  Month == 10 & Year == 2014 ~ Temperature_10_2014,
  Month == 11 & Year == 2014 ~ Temperature_11_2014,
  Month == 12 & Year == 2014 ~ Temperature_12_2014,
            Month == 1 & Year == 2015 ~ Temperature_01_2015,
           Month == 2 & Year == 2015 ~ Temperature_02_2015,
		   Month == 3 & Year == 2015 ~ Temperature_03_2015,
  Month == 4 & Year == 2015 ~ Temperature_04_2015,
  Month == 5 & Year == 2015 ~ Temperature_05_2015,
  Month == 6 & Year == 2015 ~ Temperature_06_2015,
  Month == 7 & Year == 2015 ~ Temperature_07_2015,
  Month == 8 & Year == 2015 ~ Temperature_08_2015,
  Month == 9 & Year == 2015 ~ Temperature_09_2015,
  Month == 10 & Year == 2015 ~ Temperature_10_2015,
  Month == 11 & Year == 2015 ~ Temperature_11_2015,
  Month == 12 & Year == 2015 ~ Temperature_12_2015,
            Month == 1 & Year == 2016 ~ Temperature_01_2016,
           Month == 2 & Year == 2016 ~ Temperature_02_2016,
		   Month == 3 & Year == 2016 ~ Temperature_03_2016,
  Month == 4 & Year == 2016 ~ Temperature_04_2016,
  Month == 5 & Year == 2016 ~ Temperature_05_2016,
  Month == 6 & Year == 2016 ~ Temperature_06_2016,
  Month == 7 & Year == 2016 ~ Temperature_07_2016,
  Month == 8 & Year == 2016 ~ Temperature_08_2016,
  Month == 9 & Year == 2016 ~ Temperature_09_2016,
  Month == 10 & Year == 2016 ~ Temperature_10_2016,
  Month == 11 & Year == 2016 ~ Temperature_11_2016,
  Month == 12 & Year == 2016 ~ Temperature_12_2016,
            Month == 1 & Year == 2017 ~ Temperature_01_2017,
           Month == 2 & Year == 2017 ~ Temperature_02_2017,
		   Month == 3 & Year == 2017 ~ Temperature_03_2017,
  Month == 4 & Year == 2017 ~ Temperature_04_2017,
  Month == 5 & Year == 2017 ~ Temperature_05_2017,
  Month == 6 & Year == 2017 ~ Temperature_06_2017,
  Month == 7 & Year == 2017 ~ Temperature_07_2017,
  Month == 8 & Year == 2017 ~ Temperature_08_2017,
  Month == 9 & Year == 2017 ~ Temperature_09_2017,
  Month == 10 & Year == 2017 ~ Temperature_10_2017,
  Month == 11 & Year == 2017 ~ Temperature_11_2017,
  Month == 12 & Year == 2017 ~ Temperature_12_2017,
            Month == 1 & Year == 2018 ~ Temperature_01_2018,
           Month == 2 & Year == 2018 ~ Temperature_02_2018,
		   Month == 3 & Year == 2018 ~ Temperature_03_2018,
  Month == 4 & Year == 2018 ~ Temperature_04_2018,
  Month == 5 & Year == 2018 ~ Temperature_05_2018,
  Month == 6 & Year == 2018 ~ Temperature_06_2018,
  Month == 7 & Year == 2018 ~ Temperature_07_2018,
  Month == 8 & Year == 2018 ~ Temperature_08_2018,
  Month == 9 & Year == 2018 ~ Temperature_09_2018,
  Month == 10 & Year == 2018 ~ Temperature_10_2018,
  Month == 11 & Year == 2018 ~ Temperature_11_2018,
  Month == 12 & Year == 2018 ~ Temperature_12_2018,
            Month == 1 & Year == 2019 ~ Temperature_01_2019,
           Month == 2 & Year == 2019 ~ Temperature_02_2019,
		   Month == 3 & Year == 2019 ~ Temperature_03_2019,
  Month == 4 & Year == 2019 ~ Temperature_04_2019,
  Month == 5 & Year == 2019 ~ Temperature_05_2019,
  Month == 6 & Year == 2019 ~ Temperature_06_2019,
  Month == 7 & Year == 2019 ~ Temperature_07_2019,
  Month == 8 & Year == 2019 ~ Temperature_08_2019,
  Month == 9 & Year == 2019 ~ Temperature_09_2019,
  Month == 10 & Year == 2019 ~ Temperature_10_2019,
  Month == 11 & Year == 2019 ~ Temperature_11_2019,
  Month == 12 & Year == 2019 ~ Temperature_12_2019,
            Month == 1 & Year == 2020 ~ Temperature_01_2020,
           Month == 2 & Year == 2020 ~ Temperature_02_2020,
		   Month == 3 & Year == 2020 ~ Temperature_03_2020,
  Month == 4 & Year == 2020 ~ Temperature_04_2020,
  Month == 5 & Year == 2020 ~ Temperature_05_2020,
  Month == 6 & Year == 2020 ~ Temperature_06_2020,
  Month == 7 & Year == 2020 ~ Temperature_07_2020,
  Month == 8 & Year == 2020 ~ Temperature_08_2020,
  Month == 9 & Year == 2020 ~ Temperature_09_2020,
  Month == 10 & Year == 2020 ~ Temperature_10_2020,
  Month == 11 & Year == 2020 ~ Temperature_11_2020,
  Month == 12 & Year == 2020 ~ Temperature_12_2020,
            Month == 1 & Year == 2021 ~ Temperature_01_2021,
           Month == 2 & Year == 2021 ~ Temperature_02_2021,
		   Month == 3 & Year == 2021 ~ Temperature_03_2021,
  Month == 4 & Year == 2021 ~ Temperature_04_2021,
  Month == 5 & Year == 2021 ~ Temperature_05_2021,
  Month == 6 & Year == 2021 ~ Temperature_06_2021,
  Month == 7 & Year == 2021 ~ Temperature_07_2021,
  Month == 8 & Year == 2021 ~ Temperature_08_2021,
  Month == 9 & Year == 2021 ~ Temperature_09_2021,
  Month == 10 & Year == 2021 ~ Temperature_10_2021,
  Month == 11 & Year == 2021 ~ Temperature_11_2021,
  Month == 12 & Year == 2021 ~ Temperature_12_2021,
            Month == 1 & Year == 2022 ~ Temperature_01_2022,
           Month == 2 & Year == 2022 ~ Temperature_02_2022,
		   Month == 3 & Year == 2022 ~ Temperature_03_2022,
  Month == 4 & Year == 2022 ~ Temperature_04_2022,
  Month == 5 & Year == 2022 ~ Temperature_05_2022,
  Month == 6 & Year == 2022 ~ Temperature_06_2022,
  Month == 7 & Year == 2022 ~ Temperature_07_2022,
  Month == 8 & Year == 2022 ~ Temperature_08_2022,
  Month == 9 & Year == 2022 ~ Temperature_09_2022,
  Month == 10 & Year == 2022 ~ Temperature_10_2022,
  Month == 11 & Year == 2022 ~ Temperature_11_2022,
             TRUE ~ NA_real_
         ),
         Temperature_month_prior1 = case_when(
		   Month == 2 & Year == 2001 ~ Temperature_01_2001,
		   Month == 3 & Year == 2001 ~ Temperature_02_2001,
  Month == 4 & Year == 2001 ~ Temperature_03_2001,
  Month == 5 & Year == 2001 ~ Temperature_04_2001,
  Month == 6 & Year == 2001 ~ Temperature_05_2001,
  Month == 7 & Year == 2001 ~ Temperature_06_2001,
  Month == 8 & Year == 2001 ~ Temperature_07_2001,
  Month == 9 & Year == 2001 ~ Temperature_08_2001,
  Month == 10 & Year == 2001 ~ Temperature_09_2001,
  Month == 11 & Year == 2001 ~ Temperature_10_2001,
  Month == 12 & Year == 2001 ~ Temperature_11_2001,
		   Month == 1 & Year == 2002 ~ Temperature_12_2001,
           Month == 2 & Year == 2002 ~ Temperature_01_2002,
		   Month == 3 & Year == 2002 ~ Temperature_02_2002,
  Month == 4 & Year == 2002 ~ Temperature_03_2002,
  Month == 5 & Year == 2002 ~ Temperature_04_2002,
  Month == 6 & Year == 2002 ~ Temperature_05_2002,
  Month == 7 & Year == 2002 ~ Temperature_06_2002,
  Month == 8 & Year == 2002 ~ Temperature_07_2002,
  Month == 9 & Year == 2002 ~ Temperature_08_2002,
  Month == 10 & Year == 2002 ~ Temperature_09_2002,
  Month == 11 & Year == 2002 ~ Temperature_10_2002,
  Month == 12 & Year == 2002 ~ Temperature_11_2002,
		   Month == 1 & Year == 2003 ~ Temperature_12_2002,
           Month == 2 & Year == 2003 ~ Temperature_01_2003,
		   Month == 3 & Year == 2003 ~ Temperature_02_2003,
  Month == 4 & Year == 2003 ~ Temperature_03_2003,
  Month == 5 & Year == 2003 ~ Temperature_04_2003,
  Month == 6 & Year == 2003 ~ Temperature_05_2003,
  Month == 7 & Year == 2003 ~ Temperature_06_2003,
  Month == 8 & Year == 2003 ~ Temperature_07_2003,
  Month == 9 & Year == 2003 ~ Temperature_08_2003,
  Month == 10 & Year == 2003 ~ Temperature_09_2003,
  Month == 11 & Year == 2003 ~ Temperature_10_2003,
  Month == 12 & Year == 2003 ~ Temperature_11_2003,
		   Month == 1 & Year == 2004 ~ Temperature_12_2003,
           Month == 2 & Year == 2004 ~ Temperature_01_2004,
		   Month == 3 & Year == 2004 ~ Temperature_02_2004,
  Month == 4 & Year == 2004 ~ Temperature_03_2004,
  Month == 5 & Year == 2004 ~ Temperature_04_2004,
  Month == 6 & Year == 2004 ~ Temperature_05_2004,
  Month == 7 & Year == 2004 ~ Temperature_06_2004,
  Month == 8 & Year == 2004 ~ Temperature_07_2004,
  Month == 9 & Year == 2004 ~ Temperature_08_2004,
  Month == 10 & Year == 2004 ~ Temperature_09_2004,
  Month == 11 & Year == 2004 ~ Temperature_10_2004,
  Month == 12 & Year == 2004 ~ Temperature_11_2004,
		   Month == 1 & Year == 2005 ~ Temperature_12_2004,
           Month == 2 & Year == 2005 ~ Temperature_01_2005,
		   Month == 3 & Year == 2005 ~ Temperature_02_2005,
  Month == 4 & Year == 2005 ~ Temperature_03_2005,
  Month == 5 & Year == 2005 ~ Temperature_04_2005,
  Month == 6 & Year == 2005 ~ Temperature_05_2005,
  Month == 7 & Year == 2005 ~ Temperature_06_2005,
  Month == 8 & Year == 2005 ~ Temperature_07_2005,
  Month == 9 & Year == 2005 ~ Temperature_08_2005,
  Month == 10 & Year == 2005 ~ Temperature_09_2005,
  Month == 11 & Year == 2005 ~ Temperature_10_2005,
  Month == 12 & Year == 2005 ~ Temperature_11_2005,
           Month == 1 & Year == 2006 ~ Temperature_12_2005,
           Month == 2 & Year == 2006 ~ Temperature_01_2006,
		   Month == 3 & Year == 2006 ~ Temperature_02_2006,
  Month == 4 & Year == 2006 ~ Temperature_03_2006,
  Month == 5 & Year == 2006 ~ Temperature_04_2006,
  Month == 6 & Year == 2006 ~ Temperature_05_2006,
  Month == 7 & Year == 2006 ~ Temperature_06_2006,
  Month == 8 & Year == 2006 ~ Temperature_07_2006,
  Month == 9 & Year == 2006 ~ Temperature_08_2006,
  Month == 10 & Year == 2006 ~ Temperature_09_2006,
  Month == 11 & Year == 2006 ~ Temperature_10_2006,
  Month == 12 & Year == 2006 ~ Temperature_11_2006,
   Month == 1 & Year == 2007 ~ Temperature_12_2006,
           Month == 2 & Year == 2007 ~ Temperature_01_2007,
		   Month == 3 & Year == 2007 ~ Temperature_02_2007,
  Month == 4 & Year == 2007 ~ Temperature_03_2007,
  Month == 5 & Year == 2007 ~ Temperature_04_2007,
  Month == 6 & Year == 2007 ~ Temperature_05_2007,
  Month == 7 & Year == 2007 ~ Temperature_06_2007,
  Month == 8 & Year == 2007 ~ Temperature_07_2007,
  Month == 9 & Year == 2007 ~ Temperature_08_2007,
  Month == 10 & Year == 2007 ~ Temperature_09_2007,
  Month == 11 & Year == 2007 ~ Temperature_10_2007,
  Month == 12 & Year == 2007 ~ Temperature_11_2007,
   Month == 1 & Year == 2008 ~ Temperature_12_2007,
           Month == 2 & Year == 2008 ~ Temperature_01_2008,
		   Month == 3 & Year == 2008 ~ Temperature_02_2008,
  Month == 4 & Year == 2008 ~ Temperature_03_2008,
  Month == 5 & Year == 2008 ~ Temperature_04_2008,
  Month == 6 & Year == 2008 ~ Temperature_05_2008,
  Month == 7 & Year == 2008 ~ Temperature_06_2008,
  Month == 8 & Year == 2008 ~ Temperature_07_2008,
  Month == 9 & Year == 2008 ~ Temperature_08_2008,
  Month == 10 & Year == 2008 ~ Temperature_09_2008,
  Month == 11 & Year == 2008 ~ Temperature_10_2008,
  Month == 12 & Year == 2008 ~ Temperature_11_2008,
     Month == 1 & Year == 2009 ~ Temperature_12_2008,
           Month == 2 & Year == 2009 ~ Temperature_01_2009,
		   Month == 3 & Year == 2009 ~ Temperature_02_2009,
  Month == 4 & Year == 2009 ~ Temperature_03_2009,
  Month == 5 & Year == 2009 ~ Temperature_04_2009,
  Month == 6 & Year == 2009 ~ Temperature_05_2009,
  Month == 7 & Year == 2009 ~ Temperature_06_2009,
  Month == 8 & Year == 2009 ~ Temperature_07_2009,
  Month == 9 & Year == 2009 ~ Temperature_08_2009,
  Month == 10 & Year == 2009 ~ Temperature_09_2009,
  Month == 11 & Year == 2009 ~ Temperature_10_2009,
  Month == 12 & Year == 2009 ~ Temperature_11_2009,
       Month == 1 & Year == 2010 ~ Temperature_12_2009,
           Month == 2 & Year == 2010 ~ Temperature_01_2010,
		   Month == 3 & Year == 2010 ~ Temperature_02_2010,
  Month == 4 & Year == 2010 ~ Temperature_03_2010,
  Month == 5 & Year == 2010 ~ Temperature_04_2010,
  Month == 6 & Year == 2010 ~ Temperature_05_2010,
  Month == 7 & Year == 2010 ~ Temperature_06_2010,
  Month == 8 & Year == 2010 ~ Temperature_07_2010,
  Month == 9 & Year == 2010 ~ Temperature_08_2010,
  Month == 10 & Year == 2010 ~ Temperature_09_2010,
  Month == 11 & Year == 2010 ~ Temperature_10_2010,
  Month == 12 & Year == 2010 ~ Temperature_11_2010,
       Month == 1 & Year == 2011 ~ Temperature_12_2010,
           Month == 2 & Year == 2011 ~ Temperature_01_2011,
		   Month == 3 & Year == 2011 ~ Temperature_02_2011,
  Month == 4 & Year == 2011 ~ Temperature_03_2011,
  Month == 5 & Year == 2011 ~ Temperature_04_2011,
  Month == 6 & Year == 2011 ~ Temperature_05_2011,
  Month == 7 & Year == 2011 ~ Temperature_06_2011,
  Month == 8 & Year == 2011 ~ Temperature_07_2011,
  Month == 9 & Year == 2011 ~ Temperature_08_2011,
  Month == 10 & Year == 2011 ~ Temperature_09_2011,
  Month == 11 & Year == 2011 ~ Temperature_10_2011,
  Month == 12 & Year == 2011 ~ Temperature_11_2011,
         Month == 1 & Year == 2012 ~ Temperature_12_2011,
           Month == 2 & Year == 2012 ~ Temperature_01_2012,
		   Month == 3 & Year == 2012 ~ Temperature_02_2012,
  Month == 4 & Year == 2012 ~ Temperature_03_2012,
  Month == 5 & Year == 2012 ~ Temperature_04_2012,
  Month == 6 & Year == 2012 ~ Temperature_05_2012,
  Month == 7 & Year == 2012 ~ Temperature_06_2012,
  Month == 8 & Year == 2012 ~ Temperature_07_2012,
  Month == 9 & Year == 2012 ~ Temperature_08_2012,
  Month == 10 & Year == 2012 ~ Temperature_09_2012,
  Month == 11 & Year == 2012 ~ Temperature_10_2012,
  Month == 12 & Year == 2012 ~ Temperature_11_2012,
           Month == 1 & Year == 2013 ~ Temperature_12_2012,
           Month == 2 & Year == 2013 ~ Temperature_01_2013,
		   Month == 3 & Year == 2013 ~ Temperature_02_2013,
  Month == 4 & Year == 2013 ~ Temperature_03_2013,
  Month == 5 & Year == 2013 ~ Temperature_04_2013,
  Month == 6 & Year == 2013 ~ Temperature_05_2013,
  Month == 7 & Year == 2013 ~ Temperature_06_2013,
  Month == 8 & Year == 2013 ~ Temperature_07_2013,
  Month == 9 & Year == 2013 ~ Temperature_08_2013,
  Month == 10 & Year == 2013 ~ Temperature_09_2013,
  Month == 11 & Year == 2013 ~ Temperature_10_2013,
  Month == 12 & Year == 2013 ~ Temperature_11_2013,
             Month == 1 & Year == 2014 ~ Temperature_12_2013,
           Month == 2 & Year == 2014 ~ Temperature_01_2014,
		   Month == 3 & Year == 2014 ~ Temperature_02_2014,
  Month == 4 & Year == 2014 ~ Temperature_03_2014,
  Month == 5 & Year == 2014 ~ Temperature_04_2014,
  Month == 6 & Year == 2014 ~ Temperature_05_2014,
  Month == 7 & Year == 2014 ~ Temperature_06_2014,
  Month == 8 & Year == 2014 ~ Temperature_07_2014,
  Month == 9 & Year == 2014 ~ Temperature_08_2014,
  Month == 10 & Year == 2014 ~ Temperature_09_2014,
  Month == 11 & Year == 2014 ~ Temperature_10_2014,
  Month == 12 & Year == 2014 ~ Temperature_11_2014,
               Month == 1 & Year == 2015 ~ Temperature_12_2014,
           Month == 2 & Year == 2015 ~ Temperature_01_2015,
		   Month == 3 & Year == 2015 ~ Temperature_02_2015,
  Month == 4 & Year == 2015 ~ Temperature_03_2015,
  Month == 5 & Year == 2015 ~ Temperature_04_2015,
  Month == 6 & Year == 2015 ~ Temperature_05_2015,
  Month == 7 & Year == 2015 ~ Temperature_06_2015,
  Month == 8 & Year == 2015 ~ Temperature_07_2015,
  Month == 9 & Year == 2015 ~ Temperature_08_2015,
  Month == 10 & Year == 2015 ~ Temperature_09_2015,
  Month == 11 & Year == 2015 ~ Temperature_10_2015,
  Month == 12 & Year == 2015 ~ Temperature_11_2015,
                 Month == 1 & Year == 2016 ~ Temperature_12_2015,
           Month == 2 & Year == 2016 ~ Temperature_01_2016,
		   Month == 3 & Year == 2016 ~ Temperature_02_2016,
  Month == 4 & Year == 2016 ~ Temperature_03_2016,
  Month == 5 & Year == 2016 ~ Temperature_04_2016,
  Month == 6 & Year == 2016 ~ Temperature_05_2016,
  Month == 7 & Year == 2016 ~ Temperature_06_2016,
  Month == 8 & Year == 2016 ~ Temperature_07_2016,
  Month == 9 & Year == 2016 ~ Temperature_08_2016,
  Month == 10 & Year == 2016 ~ Temperature_09_2016,
  Month == 11 & Year == 2016 ~ Temperature_10_2016,
  Month == 12 & Year == 2016 ~ Temperature_11_2016,
                   Month == 1 & Year == 2017 ~ Temperature_12_2016,
           Month == 2 & Year == 2017 ~ Temperature_01_2017,
		   Month == 3 & Year == 2017 ~ Temperature_02_2017,
  Month == 4 & Year == 2017 ~ Temperature_03_2017,
  Month == 5 & Year == 2017 ~ Temperature_04_2017,
  Month == 6 & Year == 2017 ~ Temperature_05_2017,
  Month == 7 & Year == 2017 ~ Temperature_06_2017,
  Month == 8 & Year == 2017 ~ Temperature_07_2017,
  Month == 9 & Year == 2017 ~ Temperature_08_2017,
  Month == 10 & Year == 2017 ~ Temperature_09_2017,
  Month == 11 & Year == 2017 ~ Temperature_10_2017,
  Month == 12 & Year == 2017 ~ Temperature_11_2017,
                     Month == 1 & Year == 2018 ~ Temperature_12_2017,
           Month == 2 & Year == 2018 ~ Temperature_01_2018,
		   Month == 3 & Year == 2018 ~ Temperature_02_2018,
  Month == 4 & Year == 2018 ~ Temperature_03_2018,
  Month == 5 & Year == 2018 ~ Temperature_04_2018,
  Month == 6 & Year == 2018 ~ Temperature_05_2018,
  Month == 7 & Year == 2018 ~ Temperature_06_2018,
  Month == 8 & Year == 2018 ~ Temperature_07_2018,
  Month == 9 & Year == 2018 ~ Temperature_08_2018,
  Month == 10 & Year == 2018 ~ Temperature_09_2018,
  Month == 11 & Year == 2018 ~ Temperature_10_2018,
  Month == 12 & Year == 2018 ~ Temperature_11_2018,
                       Month == 1 & Year == 2019 ~ Temperature_12_2018,
           Month == 2 & Year == 2019 ~ Temperature_01_2019,
		   Month == 3 & Year == 2019 ~ Temperature_02_2019,
  Month == 4 & Year == 2019 ~ Temperature_03_2019,
  Month == 5 & Year == 2019 ~ Temperature_04_2019,
  Month == 6 & Year == 2019 ~ Temperature_05_2019,
  Month == 7 & Year == 2019 ~ Temperature_06_2019,
  Month == 8 & Year == 2019 ~ Temperature_07_2019,
  Month == 9 & Year == 2019 ~ Temperature_08_2019,
  Month == 10 & Year == 2019 ~ Temperature_09_2019,
  Month == 11 & Year == 2019 ~ Temperature_10_2019,
  Month == 12 & Year == 2019 ~ Temperature_11_2019,
                         Month == 1 & Year == 2020 ~ Temperature_12_2019,
           Month == 2 & Year == 2020 ~ Temperature_01_2020,
		   Month == 3 & Year == 2020 ~ Temperature_02_2020,
  Month == 4 & Year == 2020 ~ Temperature_03_2020,
  Month == 5 & Year == 2020 ~ Temperature_04_2020,
  Month == 6 & Year == 2020 ~ Temperature_05_2020,
  Month == 7 & Year == 2020 ~ Temperature_06_2020,
  Month == 8 & Year == 2020 ~ Temperature_07_2020,
  Month == 9 & Year == 2020 ~ Temperature_08_2020,
  Month == 10 & Year == 2020 ~ Temperature_09_2020,
  Month == 11 & Year == 2020 ~ Temperature_10_2020,
  Month == 12 & Year == 2020 ~ Temperature_11_2020,
                           Month == 1 & Year == 2021 ~ Temperature_12_2020,
           Month == 2 & Year == 2021 ~ Temperature_01_2021,
		   Month == 3 & Year == 2021 ~ Temperature_02_2021,
  Month == 4 & Year == 2021 ~ Temperature_03_2021,
  Month == 5 & Year == 2021 ~ Temperature_04_2021,
  Month == 6 & Year == 2021 ~ Temperature_05_2021,
  Month == 7 & Year == 2021 ~ Temperature_06_2021,
  Month == 8 & Year == 2021 ~ Temperature_07_2021,
  Month == 9 & Year == 2021 ~ Temperature_08_2021,
  Month == 10 & Year == 2021 ~ Temperature_09_2021,
  Month == 11 & Year == 2021 ~ Temperature_10_2021,
  Month == 12 & Year == 2021 ~ Temperature_11_2021,
                             Month == 1 & Year == 2022 ~ Temperature_12_2021,
           Month == 2 & Year == 2022 ~ Temperature_01_2022,
		   Month == 3 & Year == 2022 ~ Temperature_02_2022,
  Month == 4 & Year == 2022 ~ Temperature_03_2022,
  Month == 5 & Year == 2022 ~ Temperature_04_2022,
  Month == 6 & Year == 2022 ~ Temperature_05_2022,
  Month == 7 & Year == 2022 ~ Temperature_06_2022,
  Month == 8 & Year == 2022 ~ Temperature_07_2022,
  Month == 9 & Year == 2022 ~ Temperature_08_2022,
  Month == 10 & Year == 2022 ~ Temperature_09_2022,
  Month == 11 & Year == 2022 ~ Temperature_10_2022,
  Month == 12 & Year == 2022 ~ Temperature_11_2022,
           TRUE ~ NA_real_
         ),
         Temperature_month_prior2 = case_when(
  Month == 3 & Year == 2001 ~ Temperature_01_2001,
  Month == 4 & Year == 2001 ~ Temperature_02_2001,
  Month == 5 & Year == 2001 ~ Temperature_03_2001,
  Month == 6 & Year == 2001 ~ Temperature_04_2001,
  Month == 7 & Year == 2001 ~ Temperature_05_2001,
  Month == 8 & Year == 2001 ~ Temperature_06_2001,
  Month == 9 & Year == 2001 ~ Temperature_07_2001,
  Month == 10 & Year == 2001 ~ Temperature_08_2001,
  Month == 11 & Year == 2001 ~ Temperature_09_2001,
  Month == 12 & Year == 2001 ~ Temperature_10_2001,
		   Month == 1 & Year == 2002 ~ Temperature_11_2001,
           Month == 2 & Year == 2002 ~ Temperature_12_2001,
		   Month == 3 & Year == 2002 ~ Temperature_01_2002,
  Month == 4 & Year == 2002 ~ Temperature_02_2002,
  Month == 5 & Year == 2002 ~ Temperature_03_2002,
  Month == 6 & Year == 2002 ~ Temperature_04_2002,
  Month == 7 & Year == 2002 ~ Temperature_05_2002,
  Month == 8 & Year == 2002 ~ Temperature_06_2002,
  Month == 9 & Year == 2002 ~ Temperature_07_2002,
  Month == 10 & Year == 2002 ~ Temperature_08_2002,
  Month == 11 & Year == 2002 ~ Temperature_09_2002,
  Month == 12 & Year == 2002 ~ Temperature_10_2002,
		   Month == 1 & Year == 2003 ~ Temperature_11_2002,
           Month == 2 & Year == 2003 ~ Temperature_12_2002,
		   Month == 3 & Year == 2003 ~ Temperature_01_2003,
  Month == 4 & Year == 2003 ~ Temperature_02_2003,
  Month == 5 & Year == 2003 ~ Temperature_03_2003,
  Month == 6 & Year == 2003 ~ Temperature_04_2003,
  Month == 7 & Year == 2003 ~ Temperature_05_2003,
  Month == 8 & Year == 2003 ~ Temperature_06_2003,
  Month == 9 & Year == 2003 ~ Temperature_07_2003,
  Month == 10 & Year == 2003 ~ Temperature_08_2003,
  Month == 11 & Year == 2003 ~ Temperature_09_2003,
  Month == 12 & Year == 2003 ~ Temperature_10_2003,
		   Month == 1 & Year == 2004 ~ Temperature_11_2003,
           Month == 2 & Year == 2004 ~ Temperature_12_2003,
		   Month == 3 & Year == 2004 ~ Temperature_01_2004,
  Month == 4 & Year == 2004 ~ Temperature_02_2004,
  Month == 5 & Year == 2004 ~ Temperature_03_2004,
  Month == 6 & Year == 2004 ~ Temperature_04_2004,
  Month == 7 & Year == 2004 ~ Temperature_05_2004,
  Month == 8 & Year == 2004 ~ Temperature_06_2004,
  Month == 9 & Year == 2004 ~ Temperature_07_2004,
  Month == 10 & Year == 2004 ~ Temperature_08_2004,
  Month == 11 & Year == 2004 ~ Temperature_09_2004,
  Month == 12 & Year == 2004 ~ Temperature_10_2004,
		   Month == 1 & Year == 2005 ~ Temperature_11_2004,
           Month == 2 & Year == 2005 ~ Temperature_12_2004,
		   Month == 3 & Year == 2005 ~ Temperature_01_2005,
  Month == 4 & Year == 2005 ~ Temperature_02_2005,
  Month == 5 & Year == 2005 ~ Temperature_03_2005,
  Month == 6 & Year == 2005 ~ Temperature_04_2005,
  Month == 7 & Year == 2005 ~ Temperature_05_2005,
  Month == 8 & Year == 2005 ~ Temperature_06_2005,
  Month == 9 & Year == 2005 ~ Temperature_07_2005,
  Month == 10 & Year == 2005 ~ Temperature_08_2005,
  Month == 11 & Year == 2005 ~ Temperature_09_2005,
  Month == 12 & Year == 2005 ~ Temperature_10_2005,
           Month == 1 & Year == 2006 ~ Temperature_11_2005,
           Month == 2 & Year == 2006 ~ Temperature_12_2005,
		   Month == 3 & Year == 2006 ~ Temperature_01_2006,
  Month == 4 & Year == 2006 ~ Temperature_02_2006,
  Month == 5 & Year == 2006 ~ Temperature_03_2006,
  Month == 6 & Year == 2006 ~ Temperature_04_2006,
  Month == 7 & Year == 2006 ~ Temperature_05_2006,
  Month == 8 & Year == 2006 ~ Temperature_06_2006,
  Month == 9 & Year == 2006 ~ Temperature_07_2006,
  Month == 10 & Year == 2006 ~ Temperature_08_2006,
  Month == 11 & Year == 2006 ~ Temperature_09_2006,
  Month == 12 & Year == 2006 ~ Temperature_10_2006,
              Month == 1 & Year == 2007 ~ Temperature_11_2006,
           Month == 2 & Year == 2007 ~ Temperature_12_2006,
		   Month == 3 & Year == 2007 ~ Temperature_01_2007,
  Month == 4 & Year == 2007 ~ Temperature_02_2007,
  Month == 5 & Year == 2007 ~ Temperature_03_2007,
  Month == 6 & Year == 2007 ~ Temperature_04_2007,
  Month == 7 & Year == 2007 ~ Temperature_05_2007,
  Month == 8 & Year == 2007 ~ Temperature_06_2007,
  Month == 9 & Year == 2007 ~ Temperature_07_2007,
  Month == 10 & Year == 2007 ~ Temperature_08_2007,
  Month == 11 & Year == 2007 ~ Temperature_09_2007,
  Month == 12 & Year == 2007 ~ Temperature_10_2007,
            Month == 1 & Year == 2008 ~ Temperature_11_2007,
           Month == 2 & Year == 2008 ~ Temperature_12_2007,
		   Month == 3 & Year == 2008 ~ Temperature_01_2008,
  Month == 4 & Year == 2008 ~ Temperature_02_2008,
  Month == 5 & Year == 2008 ~ Temperature_03_2008,
  Month == 6 & Year == 2008 ~ Temperature_04_2008,
  Month == 7 & Year == 2008 ~ Temperature_05_2008,
  Month == 8 & Year == 2008 ~ Temperature_06_2008,
  Month == 9 & Year == 2008 ~ Temperature_07_2008,
  Month == 10 & Year == 2008 ~ Temperature_08_2008,
  Month == 11 & Year == 2008 ~ Temperature_09_2008,
  Month == 12 & Year == 2008 ~ Temperature_10_2008,
            Month == 1 & Year == 2009 ~ Temperature_11_2008,
           Month == 2 & Year == 2009 ~ Temperature_12_2008,
		   Month == 3 & Year == 2009 ~ Temperature_01_2009,
  Month == 4 & Year == 2009 ~ Temperature_02_2009,
  Month == 5 & Year == 2009 ~ Temperature_03_2009,
  Month == 6 & Year == 2009 ~ Temperature_04_2009,
  Month == 7 & Year == 2009 ~ Temperature_05_2009,
  Month == 8 & Year == 2009 ~ Temperature_06_2009,
  Month == 9 & Year == 2009 ~ Temperature_07_2009,
  Month == 10 & Year == 2009 ~ Temperature_08_2009,
  Month == 11 & Year == 2009 ~ Temperature_09_2009,
  Month == 12 & Year == 2009 ~ Temperature_10_2009,
            Month == 1 & Year == 2010 ~ Temperature_11_2009,
           Month == 2 & Year == 2010 ~ Temperature_12_2009,
		   Month == 3 & Year == 2010 ~ Temperature_01_2010,
  Month == 4 & Year == 2010 ~ Temperature_02_2010,
  Month == 5 & Year == 2010 ~ Temperature_03_2010,
  Month == 6 & Year == 2010 ~ Temperature_04_2010,
  Month == 7 & Year == 2010 ~ Temperature_05_2010,
  Month == 8 & Year == 2010 ~ Temperature_06_2010,
  Month == 9 & Year == 2010 ~ Temperature_07_2010,
  Month == 10 & Year == 2010 ~ Temperature_08_2010,
  Month == 11 & Year == 2010 ~ Temperature_09_2010,
  Month == 12 & Year == 2010 ~ Temperature_10_2010,
            Month == 1 & Year == 2011 ~ Temperature_11_2010,
           Month == 2 & Year == 2011 ~ Temperature_12_2010,
		   Month == 3 & Year == 2011 ~ Temperature_01_2011,
  Month == 4 & Year == 2011 ~ Temperature_02_2011,
  Month == 5 & Year == 2011 ~ Temperature_03_2011,
  Month == 6 & Year == 2011 ~ Temperature_04_2011,
  Month == 7 & Year == 2011 ~ Temperature_05_2011,
  Month == 8 & Year == 2011 ~ Temperature_06_2011,
  Month == 9 & Year == 2011 ~ Temperature_07_2011,
  Month == 10 & Year == 2011 ~ Temperature_08_2011,
  Month == 11 & Year == 2011 ~ Temperature_09_2011,
  Month == 12 & Year == 2011 ~ Temperature_10_2011,
            Month == 1 & Year == 2012 ~ Temperature_11_2011,
           Month == 2 & Year == 2012 ~ Temperature_12_2011,
		   Month == 3 & Year == 2012 ~ Temperature_01_2012,
  Month == 4 & Year == 2012 ~ Temperature_02_2012,
  Month == 5 & Year == 2012 ~ Temperature_03_2012,
  Month == 6 & Year == 2012 ~ Temperature_04_2012,
  Month == 7 & Year == 2012 ~ Temperature_05_2012,
  Month == 8 & Year == 2012 ~ Temperature_06_2012,
  Month == 9 & Year == 2012 ~ Temperature_07_2012,
  Month == 10 & Year == 2012 ~ Temperature_08_2012,
  Month == 11 & Year == 2012 ~ Temperature_09_2012,
  Month == 12 & Year == 2012 ~ Temperature_10_2012,
            Month == 1 & Year == 2013 ~ Temperature_11_2012,
           Month == 2 & Year == 2013 ~ Temperature_12_2012,
		   Month == 3 & Year == 2013 ~ Temperature_01_2013,
  Month == 4 & Year == 2013 ~ Temperature_02_2013,
  Month == 5 & Year == 2013 ~ Temperature_03_2013,
  Month == 6 & Year == 2013 ~ Temperature_04_2013,
  Month == 7 & Year == 2013 ~ Temperature_05_2013,
  Month == 8 & Year == 2013 ~ Temperature_06_2013,
  Month == 9 & Year == 2013 ~ Temperature_07_2013,
  Month == 10 & Year == 2013 ~ Temperature_08_2013,
  Month == 11 & Year == 2013 ~ Temperature_09_2013,
  Month == 12 & Year == 2013 ~ Temperature_10_2013,
            Month == 1 & Year == 2014 ~ Temperature_11_2013,
           Month == 2 & Year == 2014 ~ Temperature_12_2013,
		   Month == 3 & Year == 2014 ~ Temperature_01_2014,
  Month == 4 & Year == 2014 ~ Temperature_02_2014,
  Month == 5 & Year == 2014 ~ Temperature_03_2014,
  Month == 6 & Year == 2014 ~ Temperature_04_2014,
  Month == 7 & Year == 2014 ~ Temperature_05_2014,
  Month == 8 & Year == 2014 ~ Temperature_06_2014,
  Month == 9 & Year == 2014 ~ Temperature_07_2014,
  Month == 10 & Year == 2014 ~ Temperature_08_2014,
  Month == 11 & Year == 2014 ~ Temperature_09_2014,
  Month == 12 & Year == 2014 ~ Temperature_10_2014,
            Month == 1 & Year == 2015 ~ Temperature_11_2014,
           Month == 2 & Year == 2015 ~ Temperature_12_2014,
		   Month == 3 & Year == 2015 ~ Temperature_01_2015,
  Month == 4 & Year == 2015 ~ Temperature_02_2015,
  Month == 5 & Year == 2015 ~ Temperature_03_2015,
  Month == 6 & Year == 2015 ~ Temperature_04_2015,
  Month == 7 & Year == 2015 ~ Temperature_05_2015,
  Month == 8 & Year == 2015 ~ Temperature_06_2015,
  Month == 9 & Year == 2015 ~ Temperature_07_2015,
  Month == 10 & Year == 2015 ~ Temperature_08_2015,
  Month == 11 & Year == 2015 ~ Temperature_09_2015,
  Month == 12 & Year == 2015 ~ Temperature_10_2015,
            Month == 1 & Year == 2016 ~ Temperature_11_2015,
           Month == 2 & Year == 2016 ~ Temperature_12_2015,
		   Month == 3 & Year == 2016 ~ Temperature_01_2016,
  Month == 4 & Year == 2016 ~ Temperature_02_2016,
  Month == 5 & Year == 2016 ~ Temperature_03_2016,
  Month == 6 & Year == 2016 ~ Temperature_04_2016,
  Month == 7 & Year == 2016 ~ Temperature_05_2016,
  Month == 8 & Year == 2016 ~ Temperature_06_2016,
  Month == 9 & Year == 2016 ~ Temperature_07_2016,
  Month == 10 & Year == 2016 ~ Temperature_08_2016,
  Month == 11 & Year == 2016 ~ Temperature_09_2016,
  Month == 12 & Year == 2016 ~ Temperature_10_2016,
            Month == 1 & Year == 2017 ~ Temperature_11_2016,
           Month == 2 & Year == 2017 ~ Temperature_12_2016,
		   Month == 3 & Year == 2017 ~ Temperature_01_2017,
  Month == 4 & Year == 2017 ~ Temperature_02_2017,
  Month == 5 & Year == 2017 ~ Temperature_03_2017,
  Month == 6 & Year == 2017 ~ Temperature_04_2017,
  Month == 7 & Year == 2017 ~ Temperature_05_2017,
  Month == 8 & Year == 2017 ~ Temperature_06_2017,
  Month == 9 & Year == 2017 ~ Temperature_07_2017,
  Month == 10 & Year == 2017 ~ Temperature_08_2017,
  Month == 11 & Year == 2017 ~ Temperature_09_2017,
  Month == 12 & Year == 2017 ~ Temperature_10_2017,
            Month == 1 & Year == 2018 ~ Temperature_11_2017,
           Month == 2 & Year == 2018 ~ Temperature_12_2017,
		   Month == 3 & Year == 2018 ~ Temperature_01_2018,
  Month == 4 & Year == 2018 ~ Temperature_02_2018,
  Month == 5 & Year == 2018 ~ Temperature_03_2018,
  Month == 6 & Year == 2018 ~ Temperature_04_2018,
  Month == 7 & Year == 2018 ~ Temperature_05_2018,
  Month == 8 & Year == 2018 ~ Temperature_06_2018,
  Month == 9 & Year == 2018 ~ Temperature_07_2018,
  Month == 10 & Year == 2018 ~ Temperature_08_2018,
  Month == 11 & Year == 2018 ~ Temperature_09_2018,
  Month == 12 & Year == 2018 ~ Temperature_10_2018,
            Month == 1 & Year == 2019 ~ Temperature_11_2018,
           Month == 2 & Year == 2019 ~ Temperature_12_2018,
		   Month == 3 & Year == 2019 ~ Temperature_01_2019,
  Month == 4 & Year == 2019 ~ Temperature_02_2019,
  Month == 5 & Year == 2019 ~ Temperature_03_2019,
  Month == 6 & Year == 2019 ~ Temperature_04_2019,
  Month == 7 & Year == 2019 ~ Temperature_05_2019,
  Month == 8 & Year == 2019 ~ Temperature_06_2019,
  Month == 9 & Year == 2019 ~ Temperature_07_2019,
  Month == 10 & Year == 2019 ~ Temperature_08_2019,
  Month == 11 & Year == 2019 ~ Temperature_09_2019,
  Month == 12 & Year == 2019 ~ Temperature_10_2019,
            Month == 1 & Year == 2020 ~ Temperature_11_2019,
           Month == 2 & Year == 2020 ~ Temperature_12_2019,
		   Month == 3 & Year == 2020 ~ Temperature_01_2020,
  Month == 4 & Year == 2020 ~ Temperature_02_2020,
  Month == 5 & Year == 2020 ~ Temperature_03_2020,
  Month == 6 & Year == 2020 ~ Temperature_04_2020,
  Month == 7 & Year == 2020 ~ Temperature_05_2020,
  Month == 8 & Year == 2020 ~ Temperature_06_2020,
  Month == 9 & Year == 2020 ~ Temperature_07_2020,
  Month == 10 & Year == 2020 ~ Temperature_08_2020,
  Month == 11 & Year == 2020 ~ Temperature_09_2020,
  Month == 12 & Year == 2020 ~ Temperature_10_2020,
            Month == 1 & Year == 2021 ~ Temperature_11_2020,
           Month == 2 & Year == 2021 ~ Temperature_12_2020,
		   Month == 3 & Year == 2021 ~ Temperature_01_2021,
  Month == 4 & Year == 2021 ~ Temperature_02_2021,
  Month == 5 & Year == 2021 ~ Temperature_03_2021,
  Month == 6 & Year == 2021 ~ Temperature_04_2021,
  Month == 7 & Year == 2021 ~ Temperature_05_2021,
  Month == 8 & Year == 2021 ~ Temperature_06_2021,
  Month == 9 & Year == 2021 ~ Temperature_07_2021,
  Month == 10 & Year == 2021 ~ Temperature_08_2021,
  Month == 11 & Year == 2021 ~ Temperature_09_2021,
  Month == 12 & Year == 2021 ~ Temperature_10_2021,
            Month == 1 & Year == 2022 ~ Temperature_11_2021,
           Month == 2 & Year == 2022 ~ Temperature_12_2021,
		   Month == 3 & Year == 2022 ~ Temperature_01_2022,
  Month == 4 & Year == 2022 ~ Temperature_02_2022,
  Month == 5 & Year == 2022 ~ Temperature_03_2022,
  Month == 6 & Year == 2022 ~ Temperature_04_2022,
  Month == 7 & Year == 2022 ~ Temperature_05_2022,
  Month == 8 & Year == 2022 ~ Temperature_06_2022,
  Month == 9 & Year == 2022 ~ Temperature_07_2022,
  Month == 10 & Year == 2022 ~ Temperature_08_2022,
  Month == 11 & Year == 2022 ~ Temperature_09_2022,
  Month == 12 & Year == 2022 ~ Temperature_10_2022,
           TRUE ~ NA_real_
         ),
         Moisture_month_current = case_when(
           Month == 2 & Year == 2003 ~ Moisture_02_2003,
		   Month == 3 & Year == 2003 ~ Moisture_03_2003,
  Month == 4 & Year == 2003 ~ Moisture_04_2003,
  Month == 5 & Year == 2003 ~ Moisture_05_2003,
  Month == 6 & Year == 2003 ~ Moisture_06_2003,
  Month == 7 & Year == 2003 ~ Moisture_07_2003,
  Month == 8 & Year == 2003 ~ Moisture_08_2003,
  Month == 9 & Year == 2003 ~ Moisture_09_2003,
  Month == 10 & Year == 2003 ~ Moisture_10_2003,
  Month == 11 & Year == 2003 ~ Moisture_11_2003,
  Month == 12 & Year == 2003 ~ Moisture_12_2003,
           Month == 1 & Year == 2004 ~ Moisture_01_2004,
           Month == 2 & Year == 2004 ~ Moisture_02_2004,
		   Month == 3 & Year == 2004 ~ Moisture_03_2004,
  Month == 4 & Year == 2004 ~ Moisture_04_2004,
  Month == 5 & Year == 2004 ~ Moisture_05_2004,
  Month == 6 & Year == 2004 ~ Moisture_06_2004,
  Month == 7 & Year == 2004 ~ Moisture_07_2004,
  Month == 8 & Year == 2004 ~ Moisture_08_2004,
  Month == 9 & Year == 2004 ~ Moisture_09_2004,
  Month == 10 & Year == 2004 ~ Moisture_10_2004,
  Month == 11 & Year == 2004 ~ Moisture_11_2004,
  Month == 12 & Year == 2004 ~ Moisture_12_2004,
           Month == 1 & Year == 2005 ~ Moisture_01_2005,
           Month == 2 & Year == 2005 ~ Moisture_02_2005,
		   Month == 3 & Year == 2005 ~ Moisture_03_2005,
  Month == 4 & Year == 2005 ~ Moisture_04_2005,
  Month == 5 & Year == 2005 ~ Moisture_05_2005,
  Month == 6 & Year == 2005 ~ Moisture_06_2005,
  Month == 7 & Year == 2005 ~ Moisture_07_2005,
  Month == 8 & Year == 2005 ~ Moisture_08_2005,
  Month == 9 & Year == 2005 ~ Moisture_09_2005,
  Month == 10 & Year == 2005 ~ Moisture_10_2005,
  Month == 11 & Year == 2005 ~ Moisture_11_2005,
  Month == 12 & Year == 2005 ~ Moisture_12_2005,
           Month == 1 & Year == 2006 ~ Moisture_01_2006,
           Month == 2 & Year == 2006 ~ Moisture_02_2006,
		   Month == 3 & Year == 2006 ~ Moisture_03_2006,
  Month == 4 & Year == 2006 ~ Moisture_04_2006,
  Month == 5 & Year == 2006 ~ Moisture_05_2006,
  Month == 6 & Year == 2006 ~ Moisture_06_2006,
  Month == 7 & Year == 2006 ~ Moisture_07_2006,
  Month == 8 & Year == 2006 ~ Moisture_08_2006,
  Month == 9 & Year == 2006 ~ Moisture_09_2006,
  Month == 10 & Year == 2006 ~ Moisture_10_2006,
  Month == 11 & Year == 2006 ~ Moisture_11_2006,
  Month == 12 & Year == 2006 ~ Moisture_12_2006,
            Month == 1 & Year == 2007 ~ Moisture_01_2007,
           Month == 2 & Year == 2007 ~ Moisture_02_2007,
		   Month == 3 & Year == 2007 ~ Moisture_03_2007,
  Month == 4 & Year == 2007 ~ Moisture_04_2007,
  Month == 5 & Year == 2007 ~ Moisture_05_2007,
  Month == 6 & Year == 2007 ~ Moisture_06_2007,
  Month == 7 & Year == 2007 ~ Moisture_07_2007,
  Month == 8 & Year == 2007 ~ Moisture_08_2007,
  Month == 9 & Year == 2007 ~ Moisture_09_2007,
  Month == 10 & Year == 2007 ~ Moisture_10_2007,
  Month == 11 & Year == 2007 ~ Moisture_11_2007,
  Month == 12 & Year == 2007 ~ Moisture_12_2007,
            Month == 1 & Year == 2008 ~ Moisture_01_2008,
           Month == 2 & Year == 2008 ~ Moisture_02_2008,
		   Month == 3 & Year == 2008 ~ Moisture_03_2008,
  Month == 4 & Year == 2008 ~ Moisture_04_2008,
  Month == 5 & Year == 2008 ~ Moisture_05_2008,
  Month == 6 & Year == 2008 ~ Moisture_06_2008,
  Month == 7 & Year == 2008 ~ Moisture_07_2008,
  Month == 8 & Year == 2008 ~ Moisture_08_2008,
  Month == 9 & Year == 2008 ~ Moisture_09_2008,
  Month == 10 & Year == 2008 ~ Moisture_10_2008,
  Month == 11 & Year == 2008 ~ Moisture_11_2008,
  Month == 12 & Year == 2008 ~ Moisture_12_2008,
            Month == 1 & Year == 2009 ~ Moisture_01_2009,
           Month == 2 & Year == 2009 ~ Moisture_02_2009,
		   Month == 3 & Year == 2009 ~ Moisture_03_2009,
  Month == 4 & Year == 2009 ~ Moisture_04_2009,
  Month == 5 & Year == 2009 ~ Moisture_05_2009,
  Month == 6 & Year == 2009 ~ Moisture_06_2009,
  Month == 7 & Year == 2009 ~ Moisture_07_2009,
  Month == 8 & Year == 2009 ~ Moisture_08_2009,
  Month == 9 & Year == 2009 ~ Moisture_09_2009,
  Month == 10 & Year == 2009 ~ Moisture_10_2009,
  Month == 11 & Year == 2009 ~ Moisture_11_2009,
  Month == 12 & Year == 2009 ~ Moisture_12_2009,
            Month == 1 & Year == 2010 ~ Moisture_01_2010,
           Month == 2 & Year == 2010 ~ Moisture_02_2010,
		   Month == 3 & Year == 2010 ~ Moisture_03_2010,
  Month == 4 & Year == 2010 ~ Moisture_04_2010,
  Month == 5 & Year == 2010 ~ Moisture_05_2010,
  Month == 6 & Year == 2010 ~ Moisture_06_2010,
  Month == 7 & Year == 2010 ~ Moisture_07_2010,
  Month == 8 & Year == 2010 ~ Moisture_08_2010,
  Month == 9 & Year == 2010 ~ Moisture_09_2010,
  Month == 10 & Year == 2010 ~ Moisture_10_2010,
  Month == 11 & Year == 2010 ~ Moisture_11_2010,
  Month == 12 & Year == 2010 ~ Moisture_12_2010,
            Month == 1 & Year == 2011 ~ Moisture_01_2011,
           Month == 2 & Year == 2011 ~ Moisture_02_2011,
		   Month == 3 & Year == 2011 ~ Moisture_03_2011,
  Month == 4 & Year == 2011 ~ Moisture_04_2011,
  Month == 5 & Year == 2011 ~ Moisture_05_2011,
  Month == 6 & Year == 2011 ~ Moisture_06_2011,
  Month == 7 & Year == 2011 ~ Moisture_07_2011,
  Month == 8 & Year == 2011 ~ Moisture_08_2011,
  Month == 9 & Year == 2011 ~ Moisture_09_2011,
  Month == 10 & Year == 2011 ~ Moisture_10_2011,
  Month == 11 & Year == 2011 ~ Moisture_11_2011,
  Month == 12 & Year == 2011 ~ Moisture_12_2011,
            Month == 1 & Year == 2012 ~ Moisture_01_2012,
           Month == 2 & Year == 2012 ~ Moisture_02_2012,
		   Month == 3 & Year == 2012 ~ Moisture_03_2012,
  Month == 4 & Year == 2012 ~ Moisture_04_2012,
  Month == 5 & Year == 2012 ~ Moisture_05_2012,
  Month == 6 & Year == 2012 ~ Moisture_06_2012,
  Month == 7 & Year == 2012 ~ Moisture_07_2012,
  Month == 8 & Year == 2012 ~ Moisture_08_2012,
  Month == 9 & Year == 2012 ~ Moisture_09_2012,
  Month == 10 & Year == 2012 ~ Moisture_10_2012,
  Month == 11 & Year == 2012 ~ Moisture_11_2012,
  Month == 12 & Year == 2012 ~ Moisture_12_2012,
            Month == 1 & Year == 2013 ~ Moisture_01_2013,
           Month == 2 & Year == 2013 ~ Moisture_02_2013,
		   Month == 3 & Year == 2013 ~ Moisture_03_2013,
  Month == 4 & Year == 2013 ~ Moisture_04_2013,
  Month == 5 & Year == 2013 ~ Moisture_05_2013,
  Month == 6 & Year == 2013 ~ Moisture_06_2013,
  Month == 7 & Year == 2013 ~ Moisture_07_2013,
  Month == 8 & Year == 2013 ~ Moisture_08_2013,
  Month == 9 & Year == 2013 ~ Moisture_09_2013,
  Month == 10 & Year == 2013 ~ Moisture_10_2013,
  Month == 11 & Year == 2013 ~ Moisture_11_2013,
  Month == 12 & Year == 2013 ~ Moisture_12_2013,
            Month == 1 & Year == 2014 ~ Moisture_01_2014,
           Month == 2 & Year == 2014 ~ Moisture_02_2014,
		   Month == 3 & Year == 2014 ~ Moisture_03_2014,
  Month == 4 & Year == 2014 ~ Moisture_04_2014,
  Month == 5 & Year == 2014 ~ Moisture_05_2014,
  Month == 6 & Year == 2014 ~ Moisture_06_2014,
  Month == 7 & Year == 2014 ~ Moisture_07_2014,
  Month == 8 & Year == 2014 ~ Moisture_08_2014,
  Month == 9 & Year == 2014 ~ Moisture_09_2014,
  Month == 10 & Year == 2014 ~ Moisture_10_2014,
  Month == 11 & Year == 2014 ~ Moisture_11_2014,
  Month == 12 & Year == 2014 ~ Moisture_12_2014,
            Month == 1 & Year == 2015 ~ Moisture_01_2015,
           Month == 2 & Year == 2015 ~ Moisture_02_2015,
		   Month == 3 & Year == 2015 ~ Moisture_03_2015,
  Month == 4 & Year == 2015 ~ Moisture_04_2015,
  Month == 5 & Year == 2015 ~ Moisture_05_2015,
  Month == 6 & Year == 2015 ~ Moisture_06_2015,
  Month == 7 & Year == 2015 ~ Moisture_07_2015,
  Month == 8 & Year == 2015 ~ Moisture_08_2015,
  Month == 9 & Year == 2015 ~ Moisture_09_2015,
  Month == 10 & Year == 2015 ~ Moisture_10_2015,
  Month == 11 & Year == 2015 ~ Moisture_11_2015,
  Month == 12 & Year == 2015 ~ Moisture_12_2015,
            Month == 1 & Year == 2016 ~ Moisture_01_2016,
           Month == 2 & Year == 2016 ~ Moisture_02_2016,
		   Month == 3 & Year == 2016 ~ Moisture_03_2016,
  Month == 4 & Year == 2016 ~ Moisture_04_2016,
  Month == 5 & Year == 2016 ~ Moisture_05_2016,
  Month == 6 & Year == 2016 ~ Moisture_06_2016,
  Month == 7 & Year == 2016 ~ Moisture_07_2016,
  Month == 8 & Year == 2016 ~ Moisture_08_2016,
  Month == 9 & Year == 2016 ~ Moisture_09_2016,
  Month == 10 & Year == 2016 ~ Moisture_10_2016,
  Month == 11 & Year == 2016 ~ Moisture_11_2016,
  Month == 12 & Year == 2016 ~ Moisture_12_2016,
            Month == 1 & Year == 2017 ~ Moisture_01_2017,
           Month == 2 & Year == 2017 ~ Moisture_02_2017,
		   Month == 3 & Year == 2017 ~ Moisture_03_2017,
  Month == 4 & Year == 2017 ~ Moisture_04_2017,
  Month == 5 & Year == 2017 ~ Moisture_05_2017,
  Month == 6 & Year == 2017 ~ Moisture_06_2017,
  Month == 7 & Year == 2017 ~ Moisture_07_2017,
  Month == 8 & Year == 2017 ~ Moisture_08_2017,
  Month == 9 & Year == 2017 ~ Moisture_09_2017,
  Month == 10 & Year == 2017 ~ Moisture_10_2017,
  Month == 11 & Year == 2017 ~ Moisture_11_2017,
  Month == 12 & Year == 2017 ~ Moisture_12_2017,
            Month == 1 & Year == 2018 ~ Moisture_01_2018,
           Month == 2 & Year == 2018 ~ Moisture_02_2018,
		   Month == 3 & Year == 2018 ~ Moisture_03_2018,
  Month == 4 & Year == 2018 ~ Moisture_04_2018,
  Month == 5 & Year == 2018 ~ Moisture_05_2018,
  Month == 6 & Year == 2018 ~ Moisture_06_2018,
  Month == 7 & Year == 2018 ~ Moisture_07_2018,
  Month == 8 & Year == 2018 ~ Moisture_08_2018,
  Month == 9 & Year == 2018 ~ Moisture_09_2018,
  Month == 10 & Year == 2018 ~ Moisture_10_2018,
  Month == 11 & Year == 2018 ~ Moisture_11_2018,
  Month == 12 & Year == 2018 ~ Moisture_12_2018,
            Month == 1 & Year == 2019 ~ Moisture_01_2019,
           Month == 2 & Year == 2019 ~ Moisture_02_2019,
		   Month == 3 & Year == 2019 ~ Moisture_03_2019,
  Month == 4 & Year == 2019 ~ Moisture_04_2019,
  Month == 5 & Year == 2019 ~ Moisture_05_2019,
  Month == 6 & Year == 2019 ~ Moisture_06_2019,
  Month == 7 & Year == 2019 ~ Moisture_07_2019,
  Month == 8 & Year == 2019 ~ Moisture_08_2019,
  Month == 9 & Year == 2019 ~ Moisture_09_2019,
  Month == 10 & Year == 2019 ~ Moisture_10_2019,
  Month == 11 & Year == 2019 ~ Moisture_11_2019,
  Month == 12 & Year == 2019 ~ Moisture_12_2019,
            Month == 1 & Year == 2020 ~ Moisture_01_2020,
           Month == 2 & Year == 2020 ~ Moisture_02_2020,
		   Month == 3 & Year == 2020 ~ Moisture_03_2020,
  Month == 4 & Year == 2020 ~ Moisture_04_2020,
  Month == 5 & Year == 2020 ~ Moisture_05_2020,
  Month == 6 & Year == 2020 ~ Moisture_06_2020,
  Month == 7 & Year == 2020 ~ Moisture_07_2020,
  Month == 8 & Year == 2020 ~ Moisture_08_2020,
  Month == 9 & Year == 2020 ~ Moisture_09_2020,
  Month == 10 & Year == 2020 ~ Moisture_10_2020,
  Month == 11 & Year == 2020 ~ Moisture_11_2020,
  Month == 12 & Year == 2020 ~ Moisture_12_2020,
            Month == 1 & Year == 2021 ~ Moisture_01_2021,
           Month == 2 & Year == 2021 ~ Moisture_02_2021,
		   Month == 3 & Year == 2021 ~ Moisture_03_2021,
  Month == 4 & Year == 2021 ~ Moisture_04_2021,
  Month == 5 & Year == 2021 ~ Moisture_05_2021,
  Month == 6 & Year == 2021 ~ Moisture_06_2021,
  Month == 7 & Year == 2021 ~ Moisture_07_2021,
  Month == 8 & Year == 2021 ~ Moisture_08_2021,
  Month == 9 & Year == 2021 ~ Moisture_09_2021,
  Month == 10 & Year == 2021 ~ Moisture_10_2021,
  Month == 11 & Year == 2021 ~ Moisture_11_2021,
  Month == 12 & Year == 2021 ~ Moisture_12_2021,
            Month == 1 & Year == 2022 ~ Moisture_01_2022,
           Month == 2 & Year == 2022 ~ Moisture_02_2022,
		   Month == 3 & Year == 2022 ~ Moisture_03_2022,
  Month == 4 & Year == 2022 ~ Moisture_04_2022,
  Month == 5 & Year == 2022 ~ Moisture_05_2022,
  Month == 6 & Year == 2022 ~ Moisture_06_2022,
  Month == 7 & Year == 2022 ~ Moisture_07_2022,
  Month == 8 & Year == 2022 ~ Moisture_08_2022,
  Month == 9 & Year == 2022 ~ Moisture_09_2022,
  Month == 10 & Year == 2022 ~ Moisture_10_2022,
  Month == 11 & Year == 2022 ~ Moisture_11_2022,
             TRUE ~ NA_real_
         ),
         Moisture_month_prior1 = case_when(
		   Month == 3 & Year == 2003 ~ Moisture_02_2003,
  Month == 4 & Year == 2003 ~ Moisture_03_2003,
  Month == 5 & Year == 2003 ~ Moisture_04_2003,
  Month == 6 & Year == 2003 ~ Moisture_05_2003,
  Month == 7 & Year == 2003 ~ Moisture_06_2003,
  Month == 8 & Year == 2003 ~ Moisture_07_2003,
  Month == 9 & Year == 2003 ~ Moisture_08_2003,
  Month == 10 & Year == 2003 ~ Moisture_09_2003,
  Month == 11 & Year == 2003 ~ Moisture_10_2003,
  Month == 12 & Year == 2003 ~ Moisture_11_2003,
		   Month == 1 & Year == 2004 ~ Moisture_12_2003,
           Month == 2 & Year == 2004 ~ Moisture_01_2004,
		   Month == 3 & Year == 2004 ~ Moisture_02_2004,
  Month == 4 & Year == 2004 ~ Moisture_03_2004,
  Month == 5 & Year == 2004 ~ Moisture_04_2004,
  Month == 6 & Year == 2004 ~ Moisture_05_2004,
  Month == 7 & Year == 2004 ~ Moisture_06_2004,
  Month == 8 & Year == 2004 ~ Moisture_07_2004,
  Month == 9 & Year == 2004 ~ Moisture_08_2004,
  Month == 10 & Year == 2004 ~ Moisture_09_2004,
  Month == 11 & Year == 2004 ~ Moisture_10_2004,
  Month == 12 & Year == 2004 ~ Moisture_11_2004,
		   Month == 1 & Year == 2005 ~ Moisture_12_2004,
           Month == 2 & Year == 2005 ~ Moisture_01_2005,
		   Month == 3 & Year == 2005 ~ Moisture_02_2005,
  Month == 4 & Year == 2005 ~ Moisture_03_2005,
  Month == 5 & Year == 2005 ~ Moisture_04_2005,
  Month == 6 & Year == 2005 ~ Moisture_05_2005,
  Month == 7 & Year == 2005 ~ Moisture_06_2005,
  Month == 8 & Year == 2005 ~ Moisture_07_2005,
  Month == 9 & Year == 2005 ~ Moisture_08_2005,
  Month == 10 & Year == 2005 ~ Moisture_09_2005,
  Month == 11 & Year == 2005 ~ Moisture_10_2005,
  Month == 12 & Year == 2005 ~ Moisture_11_2005,
           Month == 1 & Year == 2006 ~ Moisture_12_2005,
           Month == 2 & Year == 2006 ~ Moisture_01_2006,
		   Month == 3 & Year == 2006 ~ Moisture_02_2006,
  Month == 4 & Year == 2006 ~ Moisture_03_2006,
  Month == 5 & Year == 2006 ~ Moisture_04_2006,
  Month == 6 & Year == 2006 ~ Moisture_05_2006,
  Month == 7 & Year == 2006 ~ Moisture_06_2006,
  Month == 8 & Year == 2006 ~ Moisture_07_2006,
  Month == 9 & Year == 2006 ~ Moisture_08_2006,
  Month == 10 & Year == 2006 ~ Moisture_09_2006,
  Month == 11 & Year == 2006 ~ Moisture_10_2006,
  Month == 12 & Year == 2006 ~ Moisture_11_2006,
   Month == 1 & Year == 2007 ~ Moisture_12_2006,
           Month == 2 & Year == 2007 ~ Moisture_01_2007,
		   Month == 3 & Year == 2007 ~ Moisture_02_2007,
  Month == 4 & Year == 2007 ~ Moisture_03_2007,
  Month == 5 & Year == 2007 ~ Moisture_04_2007,
  Month == 6 & Year == 2007 ~ Moisture_05_2007,
  Month == 7 & Year == 2007 ~ Moisture_06_2007,
  Month == 8 & Year == 2007 ~ Moisture_07_2007,
  Month == 9 & Year == 2007 ~ Moisture_08_2007,
  Month == 10 & Year == 2007 ~ Moisture_09_2007,
  Month == 11 & Year == 2007 ~ Moisture_10_2007,
  Month == 12 & Year == 2007 ~ Moisture_11_2007,
   Month == 1 & Year == 2008 ~ Moisture_12_2007,
           Month == 2 & Year == 2008 ~ Moisture_01_2008,
		   Month == 3 & Year == 2008 ~ Moisture_02_2008,
  Month == 4 & Year == 2008 ~ Moisture_03_2008,
  Month == 5 & Year == 2008 ~ Moisture_04_2008,
  Month == 6 & Year == 2008 ~ Moisture_05_2008,
  Month == 7 & Year == 2008 ~ Moisture_06_2008,
  Month == 8 & Year == 2008 ~ Moisture_07_2008,
  Month == 9 & Year == 2008 ~ Moisture_08_2008,
  Month == 10 & Year == 2008 ~ Moisture_09_2008,
  Month == 11 & Year == 2008 ~ Moisture_10_2008,
  Month == 12 & Year == 2008 ~ Moisture_11_2008,
     Month == 1 & Year == 2009 ~ Moisture_12_2008,
           Month == 2 & Year == 2009 ~ Moisture_01_2009,
		   Month == 3 & Year == 2009 ~ Moisture_02_2009,
  Month == 4 & Year == 2009 ~ Moisture_03_2009,
  Month == 5 & Year == 2009 ~ Moisture_04_2009,
  Month == 6 & Year == 2009 ~ Moisture_05_2009,
  Month == 7 & Year == 2009 ~ Moisture_06_2009,
  Month == 8 & Year == 2009 ~ Moisture_07_2009,
  Month == 9 & Year == 2009 ~ Moisture_08_2009,
  Month == 10 & Year == 2009 ~ Moisture_09_2009,
  Month == 11 & Year == 2009 ~ Moisture_10_2009,
  Month == 12 & Year == 2009 ~ Moisture_11_2009,
       Month == 1 & Year == 2010 ~ Moisture_12_2009,
           Month == 2 & Year == 2010 ~ Moisture_01_2010,
		   Month == 3 & Year == 2010 ~ Moisture_02_2010,
  Month == 4 & Year == 2010 ~ Moisture_03_2010,
  Month == 5 & Year == 2010 ~ Moisture_04_2010,
  Month == 6 & Year == 2010 ~ Moisture_05_2010,
  Month == 7 & Year == 2010 ~ Moisture_06_2010,
  Month == 8 & Year == 2010 ~ Moisture_07_2010,
  Month == 9 & Year == 2010 ~ Moisture_08_2010,
  Month == 10 & Year == 2010 ~ Moisture_09_2010,
  Month == 11 & Year == 2010 ~ Moisture_10_2010,
  Month == 12 & Year == 2010 ~ Moisture_11_2010,
       Month == 1 & Year == 2011 ~ Moisture_12_2010,
           Month == 2 & Year == 2011 ~ Moisture_01_2011,
		   Month == 3 & Year == 2011 ~ Moisture_02_2011,
  Month == 4 & Year == 2011 ~ Moisture_03_2011,
  Month == 5 & Year == 2011 ~ Moisture_04_2011,
  Month == 6 & Year == 2011 ~ Moisture_05_2011,
  Month == 7 & Year == 2011 ~ Moisture_06_2011,
  Month == 8 & Year == 2011 ~ Moisture_07_2011,
  Month == 9 & Year == 2011 ~ Moisture_08_2011,
  Month == 10 & Year == 2011 ~ Moisture_09_2011,
  Month == 11 & Year == 2011 ~ Moisture_10_2011,
  Month == 12 & Year == 2011 ~ Moisture_11_2011,
         Month == 1 & Year == 2012 ~ Moisture_12_2011,
           Month == 2 & Year == 2012 ~ Moisture_01_2012,
		   Month == 3 & Year == 2012 ~ Moisture_02_2012,
  Month == 4 & Year == 2012 ~ Moisture_03_2012,
  Month == 5 & Year == 2012 ~ Moisture_04_2012,
  Month == 6 & Year == 2012 ~ Moisture_05_2012,
  Month == 7 & Year == 2012 ~ Moisture_06_2012,
  Month == 8 & Year == 2012 ~ Moisture_07_2012,
  Month == 9 & Year == 2012 ~ Moisture_08_2012,
  Month == 10 & Year == 2012 ~ Moisture_09_2012,
  Month == 11 & Year == 2012 ~ Moisture_10_2012,
  Month == 12 & Year == 2012 ~ Moisture_11_2012,
           Month == 1 & Year == 2013 ~ Moisture_12_2012,
           Month == 2 & Year == 2013 ~ Moisture_01_2013,
		   Month == 3 & Year == 2013 ~ Moisture_02_2013,
  Month == 4 & Year == 2013 ~ Moisture_03_2013,
  Month == 5 & Year == 2013 ~ Moisture_04_2013,
  Month == 6 & Year == 2013 ~ Moisture_05_2013,
  Month == 7 & Year == 2013 ~ Moisture_06_2013,
  Month == 8 & Year == 2013 ~ Moisture_07_2013,
  Month == 9 & Year == 2013 ~ Moisture_08_2013,
  Month == 10 & Year == 2013 ~ Moisture_09_2013,
  Month == 11 & Year == 2013 ~ Moisture_10_2013,
  Month == 12 & Year == 2013 ~ Moisture_11_2013,
             Month == 1 & Year == 2014 ~ Moisture_12_2013,
           Month == 2 & Year == 2014 ~ Moisture_01_2014,
		   Month == 3 & Year == 2014 ~ Moisture_02_2014,
  Month == 4 & Year == 2014 ~ Moisture_03_2014,
  Month == 5 & Year == 2014 ~ Moisture_04_2014,
  Month == 6 & Year == 2014 ~ Moisture_05_2014,
  Month == 7 & Year == 2014 ~ Moisture_06_2014,
  Month == 8 & Year == 2014 ~ Moisture_07_2014,
  Month == 9 & Year == 2014 ~ Moisture_08_2014,
  Month == 10 & Year == 2014 ~ Moisture_09_2014,
  Month == 11 & Year == 2014 ~ Moisture_10_2014,
  Month == 12 & Year == 2014 ~ Moisture_11_2014,
               Month == 1 & Year == 2015 ~ Moisture_12_2014,
           Month == 2 & Year == 2015 ~ Moisture_01_2015,
		   Month == 3 & Year == 2015 ~ Moisture_02_2015,
  Month == 4 & Year == 2015 ~ Moisture_03_2015,
  Month == 5 & Year == 2015 ~ Moisture_04_2015,
  Month == 6 & Year == 2015 ~ Moisture_05_2015,
  Month == 7 & Year == 2015 ~ Moisture_06_2015,
  Month == 8 & Year == 2015 ~ Moisture_07_2015,
  Month == 9 & Year == 2015 ~ Moisture_08_2015,
  Month == 10 & Year == 2015 ~ Moisture_09_2015,
  Month == 11 & Year == 2015 ~ Moisture_10_2015,
  Month == 12 & Year == 2015 ~ Moisture_11_2015,
                 Month == 1 & Year == 2016 ~ Moisture_12_2015,
           Month == 2 & Year == 2016 ~ Moisture_01_2016,
		   Month == 3 & Year == 2016 ~ Moisture_02_2016,
  Month == 4 & Year == 2016 ~ Moisture_03_2016,
  Month == 5 & Year == 2016 ~ Moisture_04_2016,
  Month == 6 & Year == 2016 ~ Moisture_05_2016,
  Month == 7 & Year == 2016 ~ Moisture_06_2016,
  Month == 8 & Year == 2016 ~ Moisture_07_2016,
  Month == 9 & Year == 2016 ~ Moisture_08_2016,
  Month == 10 & Year == 2016 ~ Moisture_09_2016,
  Month == 11 & Year == 2016 ~ Moisture_10_2016,
  Month == 12 & Year == 2016 ~ Moisture_11_2016,
                   Month == 1 & Year == 2017 ~ Moisture_12_2016,
           Month == 2 & Year == 2017 ~ Moisture_01_2017,
		   Month == 3 & Year == 2017 ~ Moisture_02_2017,
  Month == 4 & Year == 2017 ~ Moisture_03_2017,
  Month == 5 & Year == 2017 ~ Moisture_04_2017,
  Month == 6 & Year == 2017 ~ Moisture_05_2017,
  Month == 7 & Year == 2017 ~ Moisture_06_2017,
  Month == 8 & Year == 2017 ~ Moisture_07_2017,
  Month == 9 & Year == 2017 ~ Moisture_08_2017,
  Month == 10 & Year == 2017 ~ Moisture_09_2017,
  Month == 11 & Year == 2017 ~ Moisture_10_2017,
  Month == 12 & Year == 2017 ~ Moisture_11_2017,
                     Month == 1 & Year == 2018 ~ Moisture_12_2017,
           Month == 2 & Year == 2018 ~ Moisture_01_2018,
		   Month == 3 & Year == 2018 ~ Moisture_02_2018,
  Month == 4 & Year == 2018 ~ Moisture_03_2018,
  Month == 5 & Year == 2018 ~ Moisture_04_2018,
  Month == 6 & Year == 2018 ~ Moisture_05_2018,
  Month == 7 & Year == 2018 ~ Moisture_06_2018,
  Month == 8 & Year == 2018 ~ Moisture_07_2018,
  Month == 9 & Year == 2018 ~ Moisture_08_2018,
  Month == 10 & Year == 2018 ~ Moisture_09_2018,
  Month == 11 & Year == 2018 ~ Moisture_10_2018,
  Month == 12 & Year == 2018 ~ Moisture_11_2018,
                       Month == 1 & Year == 2019 ~ Moisture_12_2018,
           Month == 2 & Year == 2019 ~ Moisture_01_2019,
		   Month == 3 & Year == 2019 ~ Moisture_02_2019,
  Month == 4 & Year == 2019 ~ Moisture_03_2019,
  Month == 5 & Year == 2019 ~ Moisture_04_2019,
  Month == 6 & Year == 2019 ~ Moisture_05_2019,
  Month == 7 & Year == 2019 ~ Moisture_06_2019,
  Month == 8 & Year == 2019 ~ Moisture_07_2019,
  Month == 9 & Year == 2019 ~ Moisture_08_2019,
  Month == 10 & Year == 2019 ~ Moisture_09_2019,
  Month == 11 & Year == 2019 ~ Moisture_10_2019,
  Month == 12 & Year == 2019 ~ Moisture_11_2019,
                         Month == 1 & Year == 2020 ~ Moisture_12_2019,
           Month == 2 & Year == 2020 ~ Moisture_01_2020,
		   Month == 3 & Year == 2020 ~ Moisture_02_2020,
  Month == 4 & Year == 2020 ~ Moisture_03_2020,
  Month == 5 & Year == 2020 ~ Moisture_04_2020,
  Month == 6 & Year == 2020 ~ Moisture_05_2020,
  Month == 7 & Year == 2020 ~ Moisture_06_2020,
  Month == 8 & Year == 2020 ~ Moisture_07_2020,
  Month == 9 & Year == 2020 ~ Moisture_08_2020,
  Month == 10 & Year == 2020 ~ Moisture_09_2020,
  Month == 11 & Year == 2020 ~ Moisture_10_2020,
  Month == 12 & Year == 2020 ~ Moisture_11_2020,
                           Month == 1 & Year == 2021 ~ Moisture_12_2020,
           Month == 2 & Year == 2021 ~ Moisture_01_2021,
		   Month == 3 & Year == 2021 ~ Moisture_02_2021,
  Month == 4 & Year == 2021 ~ Moisture_03_2021,
  Month == 5 & Year == 2021 ~ Moisture_04_2021,
  Month == 6 & Year == 2021 ~ Moisture_05_2021,
  Month == 7 & Year == 2021 ~ Moisture_06_2021,
  Month == 8 & Year == 2021 ~ Moisture_07_2021,
  Month == 9 & Year == 2021 ~ Moisture_08_2021,
  Month == 10 & Year == 2021 ~ Moisture_09_2021,
  Month == 11 & Year == 2021 ~ Moisture_10_2021,
  Month == 12 & Year == 2021 ~ Moisture_11_2021,
                             Month == 1 & Year == 2022 ~ Moisture_12_2021,
           Month == 2 & Year == 2022 ~ Moisture_01_2022,
		   Month == 3 & Year == 2022 ~ Moisture_02_2022,
  Month == 4 & Year == 2022 ~ Moisture_03_2022,
  Month == 5 & Year == 2022 ~ Moisture_04_2022,
  Month == 6 & Year == 2022 ~ Moisture_05_2022,
  Month == 7 & Year == 2022 ~ Moisture_06_2022,
  Month == 8 & Year == 2022 ~ Moisture_07_2022,
  Month == 9 & Year == 2022 ~ Moisture_08_2022,
  Month == 10 & Year == 2022 ~ Moisture_09_2022,
  Month == 11 & Year == 2022 ~ Moisture_10_2022,
  Month == 12 & Year == 2022 ~ Moisture_11_2022,
           TRUE ~ NA_real_
         ),
         Moisture_month_prior2 = case_when(
  Month == 4 & Year == 2003 ~ Moisture_02_2003,
  Month == 5 & Year == 2003 ~ Moisture_03_2003,
  Month == 6 & Year == 2003 ~ Moisture_04_2003,
  Month == 7 & Year == 2003 ~ Moisture_05_2003,
  Month == 8 & Year == 2003 ~ Moisture_06_2003,
  Month == 9 & Year == 2003 ~ Moisture_07_2003,
  Month == 10 & Year == 2003 ~ Moisture_08_2003,
  Month == 11 & Year == 2003 ~ Moisture_09_2003,
  Month == 12 & Year == 2003 ~ Moisture_10_2003,
		   Month == 1 & Year == 2004 ~ Moisture_11_2003,
           Month == 2 & Year == 2004 ~ Moisture_12_2003,
		   Month == 3 & Year == 2004 ~ Moisture_01_2004,
  Month == 4 & Year == 2004 ~ Moisture_02_2004,
  Month == 5 & Year == 2004 ~ Moisture_03_2004,
  Month == 6 & Year == 2004 ~ Moisture_04_2004,
  Month == 7 & Year == 2004 ~ Moisture_05_2004,
  Month == 8 & Year == 2004 ~ Moisture_06_2004,
  Month == 9 & Year == 2004 ~ Moisture_07_2004,
  Month == 10 & Year == 2004 ~ Moisture_08_2004,
  Month == 11 & Year == 2004 ~ Moisture_09_2004,
  Month == 12 & Year == 2004 ~ Moisture_10_2004,
		   Month == 1 & Year == 2005 ~ Moisture_11_2004,
           Month == 2 & Year == 2005 ~ Moisture_12_2004,
		   Month == 3 & Year == 2005 ~ Moisture_01_2005,
  Month == 4 & Year == 2005 ~ Moisture_02_2005,
  Month == 5 & Year == 2005 ~ Moisture_03_2005,
  Month == 6 & Year == 2005 ~ Moisture_04_2005,
  Month == 7 & Year == 2005 ~ Moisture_05_2005,
  Month == 8 & Year == 2005 ~ Moisture_06_2005,
  Month == 9 & Year == 2005 ~ Moisture_07_2005,
  Month == 10 & Year == 2005 ~ Moisture_08_2005,
  Month == 11 & Year == 2005 ~ Moisture_09_2005,
  Month == 12 & Year == 2005 ~ Moisture_10_2005,
           Month == 1 & Year == 2006 ~ Moisture_11_2005,
           Month == 2 & Year == 2006 ~ Moisture_12_2005,
		   Month == 3 & Year == 2006 ~ Moisture_01_2006,
  Month == 4 & Year == 2006 ~ Moisture_02_2006,
  Month == 5 & Year == 2006 ~ Moisture_03_2006,
  Month == 6 & Year == 2006 ~ Moisture_04_2006,
  Month == 7 & Year == 2006 ~ Moisture_05_2006,
  Month == 8 & Year == 2006 ~ Moisture_06_2006,
  Month == 9 & Year == 2006 ~ Moisture_07_2006,
  Month == 10 & Year == 2006 ~ Moisture_08_2006,
  Month == 11 & Year == 2006 ~ Moisture_09_2006,
  Month == 12 & Year == 2006 ~ Moisture_10_2006,
              Month == 1 & Year == 2007 ~ Moisture_11_2006,
           Month == 2 & Year == 2007 ~ Moisture_12_2006,
		   Month == 3 & Year == 2007 ~ Moisture_01_2007,
  Month == 4 & Year == 2007 ~ Moisture_02_2007,
  Month == 5 & Year == 2007 ~ Moisture_03_2007,
  Month == 6 & Year == 2007 ~ Moisture_04_2007,
  Month == 7 & Year == 2007 ~ Moisture_05_2007,
  Month == 8 & Year == 2007 ~ Moisture_06_2007,
  Month == 9 & Year == 2007 ~ Moisture_07_2007,
  Month == 10 & Year == 2007 ~ Moisture_08_2007,
  Month == 11 & Year == 2007 ~ Moisture_09_2007,
  Month == 12 & Year == 2007 ~ Moisture_10_2007,
            Month == 1 & Year == 2008 ~ Moisture_11_2007,
           Month == 2 & Year == 2008 ~ Moisture_12_2007,
		   Month == 3 & Year == 2008 ~ Moisture_01_2008,
  Month == 4 & Year == 2008 ~ Moisture_02_2008,
  Month == 5 & Year == 2008 ~ Moisture_03_2008,
  Month == 6 & Year == 2008 ~ Moisture_04_2008,
  Month == 7 & Year == 2008 ~ Moisture_05_2008,
  Month == 8 & Year == 2008 ~ Moisture_06_2008,
  Month == 9 & Year == 2008 ~ Moisture_07_2008,
  Month == 10 & Year == 2008 ~ Moisture_08_2008,
  Month == 11 & Year == 2008 ~ Moisture_09_2008,
  Month == 12 & Year == 2008 ~ Moisture_10_2008,
            Month == 1 & Year == 2009 ~ Moisture_11_2008,
           Month == 2 & Year == 2009 ~ Moisture_12_2008,
		   Month == 3 & Year == 2009 ~ Moisture_01_2009,
  Month == 4 & Year == 2009 ~ Moisture_02_2009,
  Month == 5 & Year == 2009 ~ Moisture_03_2009,
  Month == 6 & Year == 2009 ~ Moisture_04_2009,
  Month == 7 & Year == 2009 ~ Moisture_05_2009,
  Month == 8 & Year == 2009 ~ Moisture_06_2009,
  Month == 9 & Year == 2009 ~ Moisture_07_2009,
  Month == 10 & Year == 2009 ~ Moisture_08_2009,
  Month == 11 & Year == 2009 ~ Moisture_09_2009,
  Month == 12 & Year == 2009 ~ Moisture_10_2009,
            Month == 1 & Year == 2010 ~ Moisture_11_2009,
           Month == 2 & Year == 2010 ~ Moisture_12_2009,
		   Month == 3 & Year == 2010 ~ Moisture_01_2010,
  Month == 4 & Year == 2010 ~ Moisture_02_2010,
  Month == 5 & Year == 2010 ~ Moisture_03_2010,
  Month == 6 & Year == 2010 ~ Moisture_04_2010,
  Month == 7 & Year == 2010 ~ Moisture_05_2010,
  Month == 8 & Year == 2010 ~ Moisture_06_2010,
  Month == 9 & Year == 2010 ~ Moisture_07_2010,
  Month == 10 & Year == 2010 ~ Moisture_08_2010,
  Month == 11 & Year == 2010 ~ Moisture_09_2010,
  Month == 12 & Year == 2010 ~ Moisture_10_2010,
            Month == 1 & Year == 2011 ~ Moisture_11_2010,
           Month == 2 & Year == 2011 ~ Moisture_12_2010,
		   Month == 3 & Year == 2011 ~ Moisture_01_2011,
  Month == 4 & Year == 2011 ~ Moisture_02_2011,
  Month == 5 & Year == 2011 ~ Moisture_03_2011,
  Month == 6 & Year == 2011 ~ Moisture_04_2011,
  Month == 7 & Year == 2011 ~ Moisture_05_2011,
  Month == 8 & Year == 2011 ~ Moisture_06_2011,
  Month == 9 & Year == 2011 ~ Moisture_07_2011,
  Month == 10 & Year == 2011 ~ Moisture_08_2011,
  Month == 11 & Year == 2011 ~ Moisture_09_2011,
  Month == 12 & Year == 2011 ~ Moisture_10_2011,
            Month == 1 & Year == 2012 ~ Moisture_11_2011,
           Month == 2 & Year == 2012 ~ Moisture_12_2011,
		   Month == 3 & Year == 2012 ~ Moisture_01_2012,
  Month == 4 & Year == 2012 ~ Moisture_02_2012,
  Month == 5 & Year == 2012 ~ Moisture_03_2012,
  Month == 6 & Year == 2012 ~ Moisture_04_2012,
  Month == 7 & Year == 2012 ~ Moisture_05_2012,
  Month == 8 & Year == 2012 ~ Moisture_06_2012,
  Month == 9 & Year == 2012 ~ Moisture_07_2012,
  Month == 10 & Year == 2012 ~ Moisture_08_2012,
  Month == 11 & Year == 2012 ~ Moisture_09_2012,
  Month == 12 & Year == 2012 ~ Moisture_10_2012,
            Month == 1 & Year == 2013 ~ Moisture_11_2012,
           Month == 2 & Year == 2013 ~ Moisture_12_2012,
		   Month == 3 & Year == 2013 ~ Moisture_01_2013,
  Month == 4 & Year == 2013 ~ Moisture_02_2013,
  Month == 5 & Year == 2013 ~ Moisture_03_2013,
  Month == 6 & Year == 2013 ~ Moisture_04_2013,
  Month == 7 & Year == 2013 ~ Moisture_05_2013,
  Month == 8 & Year == 2013 ~ Moisture_06_2013,
  Month == 9 & Year == 2013 ~ Moisture_07_2013,
  Month == 10 & Year == 2013 ~ Moisture_08_2013,
  Month == 11 & Year == 2013 ~ Moisture_09_2013,
  Month == 12 & Year == 2013 ~ Moisture_10_2013,
            Month == 1 & Year == 2014 ~ Moisture_11_2013,
           Month == 2 & Year == 2014 ~ Moisture_12_2013,
		   Month == 3 & Year == 2014 ~ Moisture_01_2014,
  Month == 4 & Year == 2014 ~ Moisture_02_2014,
  Month == 5 & Year == 2014 ~ Moisture_03_2014,
  Month == 6 & Year == 2014 ~ Moisture_04_2014,
  Month == 7 & Year == 2014 ~ Moisture_05_2014,
  Month == 8 & Year == 2014 ~ Moisture_06_2014,
  Month == 9 & Year == 2014 ~ Moisture_07_2014,
  Month == 10 & Year == 2014 ~ Moisture_08_2014,
  Month == 11 & Year == 2014 ~ Moisture_09_2014,
  Month == 12 & Year == 2014 ~ Moisture_10_2014,
            Month == 1 & Year == 2015 ~ Moisture_11_2014,
           Month == 2 & Year == 2015 ~ Moisture_12_2014,
		   Month == 3 & Year == 2015 ~ Moisture_01_2015,
  Month == 4 & Year == 2015 ~ Moisture_02_2015,
  Month == 5 & Year == 2015 ~ Moisture_03_2015,
  Month == 6 & Year == 2015 ~ Moisture_04_2015,
  Month == 7 & Year == 2015 ~ Moisture_05_2015,
  Month == 8 & Year == 2015 ~ Moisture_06_2015,
  Month == 9 & Year == 2015 ~ Moisture_07_2015,
  Month == 10 & Year == 2015 ~ Moisture_08_2015,
  Month == 11 & Year == 2015 ~ Moisture_09_2015,
  Month == 12 & Year == 2015 ~ Moisture_10_2015,
            Month == 1 & Year == 2016 ~ Moisture_11_2015,
           Month == 2 & Year == 2016 ~ Moisture_12_2015,
		   Month == 3 & Year == 2016 ~ Moisture_01_2016,
  Month == 4 & Year == 2016 ~ Moisture_02_2016,
  Month == 5 & Year == 2016 ~ Moisture_03_2016,
  Month == 6 & Year == 2016 ~ Moisture_04_2016,
  Month == 7 & Year == 2016 ~ Moisture_05_2016,
  Month == 8 & Year == 2016 ~ Moisture_06_2016,
  Month == 9 & Year == 2016 ~ Moisture_07_2016,
  Month == 10 & Year == 2016 ~ Moisture_08_2016,
  Month == 11 & Year == 2016 ~ Moisture_09_2016,
  Month == 12 & Year == 2016 ~ Moisture_10_2016,
            Month == 1 & Year == 2017 ~ Moisture_11_2016,
           Month == 2 & Year == 2017 ~ Moisture_12_2016,
		   Month == 3 & Year == 2017 ~ Moisture_01_2017,
  Month == 4 & Year == 2017 ~ Moisture_02_2017,
  Month == 5 & Year == 2017 ~ Moisture_03_2017,
  Month == 6 & Year == 2017 ~ Moisture_04_2017,
  Month == 7 & Year == 2017 ~ Moisture_05_2017,
  Month == 8 & Year == 2017 ~ Moisture_06_2017,
  Month == 9 & Year == 2017 ~ Moisture_07_2017,
  Month == 10 & Year == 2017 ~ Moisture_08_2017,
  Month == 11 & Year == 2017 ~ Moisture_09_2017,
  Month == 12 & Year == 2017 ~ Moisture_10_2017,
            Month == 1 & Year == 2018 ~ Moisture_11_2017,
           Month == 2 & Year == 2018 ~ Moisture_12_2017,
		   Month == 3 & Year == 2018 ~ Moisture_01_2018,
  Month == 4 & Year == 2018 ~ Moisture_02_2018,
  Month == 5 & Year == 2018 ~ Moisture_03_2018,
  Month == 6 & Year == 2018 ~ Moisture_04_2018,
  Month == 7 & Year == 2018 ~ Moisture_05_2018,
  Month == 8 & Year == 2018 ~ Moisture_06_2018,
  Month == 9 & Year == 2018 ~ Moisture_07_2018,
  Month == 10 & Year == 2018 ~ Moisture_08_2018,
  Month == 11 & Year == 2018 ~ Moisture_09_2018,
  Month == 12 & Year == 2018 ~ Moisture_10_2018,
            Month == 1 & Year == 2019 ~ Moisture_11_2018,
           Month == 2 & Year == 2019 ~ Moisture_12_2018,
		   Month == 3 & Year == 2019 ~ Moisture_01_2019,
  Month == 4 & Year == 2019 ~ Moisture_02_2019,
  Month == 5 & Year == 2019 ~ Moisture_03_2019,
  Month == 6 & Year == 2019 ~ Moisture_04_2019,
  Month == 7 & Year == 2019 ~ Moisture_05_2019,
  Month == 8 & Year == 2019 ~ Moisture_06_2019,
  Month == 9 & Year == 2019 ~ Moisture_07_2019,
  Month == 10 & Year == 2019 ~ Moisture_08_2019,
  Month == 11 & Year == 2019 ~ Moisture_09_2019,
  Month == 12 & Year == 2019 ~ Moisture_10_2019,
            Month == 1 & Year == 2020 ~ Moisture_11_2019,
           Month == 2 & Year == 2020 ~ Moisture_12_2019,
		   Month == 3 & Year == 2020 ~ Moisture_01_2020,
  Month == 4 & Year == 2020 ~ Moisture_02_2020,
  Month == 5 & Year == 2020 ~ Moisture_03_2020,
  Month == 6 & Year == 2020 ~ Moisture_04_2020,
  Month == 7 & Year == 2020 ~ Moisture_05_2020,
  Month == 8 & Year == 2020 ~ Moisture_06_2020,
  Month == 9 & Year == 2020 ~ Moisture_07_2020,
  Month == 10 & Year == 2020 ~ Moisture_08_2020,
  Month == 11 & Year == 2020 ~ Moisture_09_2020,
  Month == 12 & Year == 2020 ~ Moisture_10_2020,
            Month == 1 & Year == 2021 ~ Moisture_11_2020,
           Month == 2 & Year == 2021 ~ Moisture_12_2020,
		   Month == 3 & Year == 2021 ~ Moisture_01_2021,
  Month == 4 & Year == 2021 ~ Moisture_02_2021,
  Month == 5 & Year == 2021 ~ Moisture_03_2021,
  Month == 6 & Year == 2021 ~ Moisture_04_2021,
  Month == 7 & Year == 2021 ~ Moisture_05_2021,
  Month == 8 & Year == 2021 ~ Moisture_06_2021,
  Month == 9 & Year == 2021 ~ Moisture_07_2021,
  Month == 10 & Year == 2021 ~ Moisture_08_2021,
  Month == 11 & Year == 2021 ~ Moisture_09_2021,
  Month == 12 & Year == 2021 ~ Moisture_10_2021,
            Month == 1 & Year == 2022 ~ Moisture_11_2021,
           Month == 2 & Year == 2022 ~ Moisture_12_2021,
		   Month == 3 & Year == 2022 ~ Moisture_01_2022,
  Month == 4 & Year == 2022 ~ Moisture_02_2022,
  Month == 5 & Year == 2022 ~ Moisture_03_2022,
  Month == 6 & Year == 2022 ~ Moisture_04_2022,
  Month == 7 & Year == 2022 ~ Moisture_05_2022,
  Month == 8 & Year == 2022 ~ Moisture_06_2022,
  Month == 9 & Year == 2022 ~ Moisture_07_2022,
  Month == 10 & Year == 2022 ~ Moisture_08_2022,
  Month == 11 & Year == 2022 ~ Moisture_09_2022,
  Month == 12 & Year == 2022 ~ Moisture_10_2022,
           TRUE ~ NA_real_
         )) %>%
  select(Species, Year, Month, Lat, Long, Elevation, Temperature_month_current, Temperature_month_prior1, Temperature_month_prior2, Moisture_month_current, Moisture_month_prior1, Moisture_month_prior2)

write.csv(filtered_data, "Output file.csv", row.names = FALSE)

# Check for heat-moisture couplings (25°C LST & 70th percentile RZSM)

# Read the CSV file
data <- read.csv("Input file.csv", header = TRUE)

# Apply the conditions and create a new column "Coupling_month_current"
data <- data %>%
  mutate(Coupling_month_current = (Temperature_month_current >= 25) & (Moisture_month_current >= 70))

# Write the updated data to a new CSV file
write.csv(data, "coupling_month_current_25C_m70.csv", row.names = FALSE)

# Read the CSV file
data <- read.csv("coupling_month_current_25C_m70.csv", header = TRUE)

# Apply the conditions and create a new column "Coupling_month_prior1"
data <- data %>%
  mutate(Coupling_month_prior1 = (Temperature_month_prior1 >= 25) & (Moisture_month_prior1 >= 70))

# Write the updated data to a new CSV file
write.csv(data, "coupling_month_current_prior1_25C_m70.csv", row.names = FALSE)

# Read the CSV file
data <- read.csv("coupling_month_current_prior1_25C_m70.csv", header = TRUE)

# Apply the conditions and create a new column "Coupling_month_prior1"
data <- data %>%
  mutate(Coupling_month_prior2 = (Temperature_month_prior2 >= 25) & (Moisture_month_prior2 >= 70))

# Write the updated data to a new CSV file
write.csv(data, "coupling_month_current_prior1_prior2_25C_m70.csv", row.names = FALSE)

# Read the CSV file
data <- read.csv("coupling_month_current_prior1_prior2_25C_m70.csv", header = TRUE)

# Remove rows containing NA values
data_clean <- na.omit(data)

# Write the cleaned data to a new CSV file
write.csv(data_clean, "coupling_month_current_prior1_prior2_clean_25C_m70.csv", row.names = FALSE)

# Read the CSV file
data <- read.csv("coupling_month_current_prior1_prior2_clean_25C_m70.csv", header = TRUE)

# Add a new column "Coupling_any" with TRUE or FALSE values based on the conditions
data <- data %>%
  mutate(Coupling_any = Coupling_month_current | Coupling_month_prior1 | Coupling_month_prior2)

# Write the updated data to a new CSV file
write.csv(data, "coupling_any_25C_m70.csv", row.names = FALSE)

# Read the final CSV file
data <- read.csv("coupling_any_25C_m70.csv", header = TRUE)

# Group data by species and calculate the percentage of TRUE and FALSE statements in the Coupling_any column
results <- data %>%
  group_by(Species) %>%
  summarise(
    total_count = n(),
    true_count = sum(Coupling_any),
    true_percentage = (true_count / total_count) * 100,
    false_count = total_count - true_count,
    false_percentage = 100 - true_percentage
  )

# Print the results
print(results)
write.csv(results, "Heat-moisture coupling table (temp 20 moisture 70).csv", row.names = FALSE)

# Create a new dataframe by gathering "true_count" and "false_count"
results_long <- results %>%
  gather(key = "category", value = "count", c("true_count", "false_count"))

# Calculate percentage for each category
results_long <- results_long %>%
  group_by(Species) %>%
  mutate(perc = count / sum(count) * 100)

# Define a function that creates a pie chart
pie_chart <- function(data) {
  ggplot(data, aes(x = "", y = count, fill = category)) +
    geom_bar(width = 1, stat = "identity") +
    coord_polar("y", start = 0) +
    theme_void() +
    theme(plot.title = element_text(face = "italic"), legend.position = "none") +
    scale_fill_manual(values = c("#EDC9AF", "#0093AF")) +
    geom_text(aes(label = paste0(round(perc, 1), "%")), position = position_stack(vjust = 0.5), size = 3) +
    labs(title = unique(data$Species))
}

# Split the data by species and create a pie chart for each
plots <- split(results_long, results_long$Species) %>%
  purrr::map(~pie_chart(.x))

# Combine the plots into a three rows
row1 <- cowplot::plot_grid(plotlist = plots[1:3], ncol = 3)
row2 <- cowplot::plot_grid(plotlist = plots[4:5], ncol = 2)
row3 <- cowplot::plot_grid(plotlist = plots[6:8], ncol = 3)

# Combine the rows into a single figure
final_plot <- cowplot::plot_grid(row1, row2, row3, nrow = 3)
ggsave("Pie charts Species and Heat-moisture couplings temp 25 moisture 70.png", width = 4.25, height = 4.25, dpi = 300, final_plot)
ggsave("Pie charts Species and Heat-moisture couplings temp 25 moisture 70.svg", width = 4.25, height = 4.25, final_plot)
print(final_plot)


# Check for any heat-moisture couplings in the entire list
# Read the CSV file
data <- read.csv("Input file.csv", header = TRUE)

# Apply the conditions and create new columns
data <- data %>%
  mutate(Coupling_02_2003 = (Temperature_02_2003 >= 25) & (Moisture_02_2003 >= 70))
data <- data %>%
  mutate(Coupling_03_2003 = (Temperature_03_2003 >= 25) & (Moisture_03_2003 >= 70))
data <- data %>%
  mutate(Coupling_04_2003 = (Temperature_04_2003 >= 25) & (Moisture_04_2003 >= 70))
data <- data %>%
  mutate(Coupling_05_2003 = (Temperature_05_2003 >= 25) & (Moisture_05_2003 >= 70))
data <- data %>%
  mutate(Coupling_06_2003 = (Temperature_06_2003 >= 25) & (Moisture_06_2003 >= 70))
data <- data %>%
  mutate(Coupling_07_2003 = (Temperature_07_2003 >= 25) & (Moisture_07_2003 >= 70))
data <- data %>%
  mutate(Coupling_08_2003 = (Temperature_08_2003 >= 25) & (Moisture_08_2003 >= 70))
data <- data %>%
  mutate(Coupling_09_2003 = (Temperature_09_2003 >= 25) & (Moisture_09_2003 >= 70))
data <- data %>%
  mutate(Coupling_10_2003 = (Temperature_10_2003 >= 25) & (Moisture_10_2003 >= 70))
data <- data %>%
  mutate(Coupling_11_2003 = (Temperature_11_2003 >= 25) & (Moisture_11_2003 >= 70))
data <- data %>%
  mutate(Coupling_12_2003 = (Temperature_12_2003 >= 25) & (Moisture_12_2003 >= 70))
data <- data %>%
  mutate(Coupling_01_2004 = (Temperature_01_2004 >= 25) & (Moisture_01_2004 >= 70))
data <- data %>%
  mutate(Coupling_02_2004 = (Temperature_02_2004 >= 25) & (Moisture_02_2004 >= 70))
data <- data %>%
  mutate(Coupling_03_2004 = (Temperature_03_2004 >= 25) & (Moisture_03_2004 >= 70))
data <- data %>%
  mutate(Coupling_04_2004 = (Temperature_04_2004 >= 25) & (Moisture_04_2004 >= 70))
data <- data %>%
  mutate(Coupling_05_2004 = (Temperature_05_2004 >= 25) & (Moisture_05_2004 >= 70))
data <- data %>%
  mutate(Coupling_06_2004 = (Temperature_06_2004 >= 25) & (Moisture_06_2004 >= 70))
data <- data %>%
  mutate(Coupling_07_2004 = (Temperature_07_2004 >= 25) & (Moisture_07_2004 >= 70))
data <- data %>%
  mutate(Coupling_08_2004 = (Temperature_08_2004 >= 25) & (Moisture_08_2004 >= 70))
data <- data %>%
  mutate(Coupling_09_2004 = (Temperature_09_2004 >= 25) & (Moisture_09_2004 >= 70))
data <- data %>%
  mutate(Coupling_10_2004 = (Temperature_10_2004 >= 25) & (Moisture_10_2004 >= 70))
data <- data %>%
  mutate(Coupling_11_2004 = (Temperature_11_2004 >= 25) & (Moisture_11_2004 >= 70))
data <- data %>%
  mutate(Coupling_12_2004 = (Temperature_12_2004 >= 25) & (Moisture_12_2004 >= 70))
data <- data %>%
  mutate(Coupling_01_2005 = (Temperature_01_2005 >= 25) & (Moisture_01_2005 >= 70))
data <- data %>%
  mutate(Coupling_02_2005 = (Temperature_02_2005 >= 25) & (Moisture_02_2005 >= 70))
data <- data %>%
  mutate(Coupling_03_2005 = (Temperature_03_2005 >= 25) & (Moisture_03_2005 >= 70))
data <- data %>%
  mutate(Coupling_04_2005 = (Temperature_04_2005 >= 25) & (Moisture_04_2005 >= 70))
data <- data %>%
  mutate(Coupling_05_2005 = (Temperature_05_2005 >= 25) & (Moisture_05_2005 >= 70))
data <- data %>%
  mutate(Coupling_06_2005 = (Temperature_06_2005 >= 25) & (Moisture_06_2005 >= 70))
data <- data %>%
  mutate(Coupling_07_2005 = (Temperature_07_2005 >= 25) & (Moisture_07_2005 >= 70))
data <- data %>%
  mutate(Coupling_08_2005 = (Temperature_08_2005 >= 25) & (Moisture_08_2005 >= 70))
data <- data %>%
  mutate(Coupling_09_2005 = (Temperature_09_2005 >= 25) & (Moisture_09_2005 >= 70))
data <- data %>%
  mutate(Coupling_10_2005 = (Temperature_10_2005 >= 25) & (Moisture_10_2005 >= 70))
data <- data %>%
  mutate(Coupling_11_2005 = (Temperature_11_2005 >= 25) & (Moisture_11_2005 >= 70))
data <- data %>%
  mutate(Coupling_12_2005 = (Temperature_12_2005 >= 25) & (Moisture_12_2005 >= 70))
data <- data %>%
  mutate(Coupling_01_2006 = (Temperature_01_2006 >= 25) & (Moisture_01_2006 >= 70))
data <- data %>%
  mutate(Coupling_02_2006 = (Temperature_02_2006 >= 25) & (Moisture_02_2006 >= 70))
data <- data %>%
  mutate(Coupling_03_2006 = (Temperature_03_2006 >= 25) & (Moisture_03_2006 >= 70))
data <- data %>%
  mutate(Coupling_04_2006 = (Temperature_04_2006 >= 25) & (Moisture_04_2006 >= 70))
data <- data %>%
  mutate(Coupling_05_2006 = (Temperature_05_2006 >= 25) & (Moisture_05_2006 >= 70))
data <- data %>%
  mutate(Coupling_06_2006 = (Temperature_06_2006 >= 25) & (Moisture_06_2006 >= 70))
data <- data %>%
  mutate(Coupling_07_2006 = (Temperature_07_2006 >= 25) & (Moisture_07_2006 >= 70))
data <- data %>%
  mutate(Coupling_08_2006 = (Temperature_08_2006 >= 25) & (Moisture_08_2006 >= 70))
data <- data %>%
  mutate(Coupling_09_2006 = (Temperature_09_2006 >= 25) & (Moisture_09_2006 >= 70))
data <- data %>%
  mutate(Coupling_10_2006 = (Temperature_10_2006 >= 25) & (Moisture_10_2006 >= 70))
data <- data %>%
  mutate(Coupling_11_2006 = (Temperature_11_2006 >= 25) & (Moisture_11_2006 >= 70))
data <- data %>%
  mutate(Coupling_12_2006 = (Temperature_12_2006 >= 25) & (Moisture_12_2006 >= 70))
data <- data %>%
  mutate(Coupling_01_2007 = (Temperature_01_2007 >= 25) & (Moisture_01_2007 >= 70))
data <- data %>%
  mutate(Coupling_02_2007 = (Temperature_02_2007 >= 25) & (Moisture_02_2007 >= 70))
data <- data %>%
  mutate(Coupling_03_2007 = (Temperature_03_2007 >= 25) & (Moisture_03_2007 >= 70))
data <- data %>%
  mutate(Coupling_04_2007 = (Temperature_04_2007 >= 25) & (Moisture_04_2007 >= 70))
data <- data %>%
  mutate(Coupling_05_2007 = (Temperature_05_2007 >= 25) & (Moisture_05_2007 >= 70))
data <- data %>%
  mutate(Coupling_06_2007 = (Temperature_06_2007 >= 25) & (Moisture_06_2007 >= 70))
data <- data %>%
  mutate(Coupling_07_2007 = (Temperature_07_2007 >= 25) & (Moisture_07_2007 >= 70))
data <- data %>%
  mutate(Coupling_08_2007 = (Temperature_08_2007 >= 25) & (Moisture_08_2007 >= 70))
data <- data %>%
  mutate(Coupling_09_2007 = (Temperature_09_2007 >= 25) & (Moisture_09_2007 >= 70))
data <- data %>%
  mutate(Coupling_10_2007 = (Temperature_10_2007 >= 25) & (Moisture_10_2007 >= 70))
data <- data %>%
  mutate(Coupling_11_2007 = (Temperature_11_2007 >= 25) & (Moisture_11_2007 >= 70))
data <- data %>%
  mutate(Coupling_12_2007 = (Temperature_12_2007 >= 25) & (Moisture_12_2007 >= 70))
data <- data %>%
  mutate(Coupling_01_2008 = (Temperature_01_2008 >= 25) & (Moisture_01_2008 >= 70))
data <- data %>%
  mutate(Coupling_02_2008 = (Temperature_02_2008 >= 25) & (Moisture_02_2008 >= 70))
data <- data %>%
  mutate(Coupling_03_2008 = (Temperature_03_2008 >= 25) & (Moisture_03_2008 >= 70))
data <- data %>%
  mutate(Coupling_04_2008 = (Temperature_04_2008 >= 25) & (Moisture_04_2008 >= 70))
data <- data %>%
  mutate(Coupling_05_2008 = (Temperature_05_2008 >= 25) & (Moisture_05_2008 >= 70))
data <- data %>%
  mutate(Coupling_06_2008 = (Temperature_06_2008 >= 25) & (Moisture_06_2008 >= 70))
data <- data %>%
  mutate(Coupling_07_2008 = (Temperature_07_2008 >= 25) & (Moisture_07_2008 >= 70))
data <- data %>%
  mutate(Coupling_08_2008 = (Temperature_08_2008 >= 25) & (Moisture_08_2008 >= 70))
data <- data %>%
  mutate(Coupling_09_2008 = (Temperature_09_2008 >= 25) & (Moisture_09_2008 >= 70))
data <- data %>%
  mutate(Coupling_10_2008 = (Temperature_10_2008 >= 25) & (Moisture_10_2008 >= 70))
data <- data %>%
  mutate(Coupling_11_2008 = (Temperature_11_2008 >= 25) & (Moisture_11_2008 >= 70))
data <- data %>%
  mutate(Coupling_12_2008 = (Temperature_12_2008 >= 25) & (Moisture_12_2008 >= 70))
data <- data %>%
  mutate(Coupling_01_2009 = (Temperature_01_2009 >= 25) & (Moisture_01_2009 >= 70))
data <- data %>%
  mutate(Coupling_02_2009 = (Temperature_02_2009 >= 25) & (Moisture_02_2009 >= 70))
data <- data %>%
  mutate(Coupling_03_2009 = (Temperature_03_2009 >= 25) & (Moisture_03_2009 >= 70))
data <- data %>%
  mutate(Coupling_04_2009 = (Temperature_04_2009 >= 25) & (Moisture_04_2009 >= 70))
data <- data %>%
  mutate(Coupling_05_2009 = (Temperature_05_2009 >= 25) & (Moisture_05_2009 >= 70))
data <- data %>%
  mutate(Coupling_06_2009 = (Temperature_06_2009 >= 25) & (Moisture_06_2009 >= 70))
data <- data %>%
  mutate(Coupling_07_2009 = (Temperature_07_2009 >= 25) & (Moisture_07_2009 >= 70))
data <- data %>%
  mutate(Coupling_08_2009 = (Temperature_08_2009 >= 25) & (Moisture_08_2009 >= 70))
data <- data %>%
  mutate(Coupling_09_2009 = (Temperature_09_2009 >= 25) & (Moisture_09_2009 >= 70))
data <- data %>%
  mutate(Coupling_10_2009 = (Temperature_10_2009 >= 25) & (Moisture_10_2009 >= 70))
data <- data %>%
  mutate(Coupling_11_2009 = (Temperature_11_2009 >= 25) & (Moisture_11_2009 >= 70))
data <- data %>%
  mutate(Coupling_12_2009 = (Temperature_12_2009 >= 25) & (Moisture_12_2009 >= 70))
data <- data %>%
  mutate(Coupling_01_2010 = (Temperature_01_2010 >= 25) & (Moisture_01_2010 >= 70))
data <- data %>%
  mutate(Coupling_02_2010 = (Temperature_02_2010 >= 25) & (Moisture_02_2010 >= 70))
data <- data %>%
  mutate(Coupling_03_2010 = (Temperature_03_2010 >= 25) & (Moisture_03_2010 >= 70))
data <- data %>%
  mutate(Coupling_04_2010 = (Temperature_04_2010 >= 25) & (Moisture_04_2010 >= 70))
data <- data %>%
  mutate(Coupling_05_2010 = (Temperature_05_2010 >= 25) & (Moisture_05_2010 >= 70))
data <- data %>%
  mutate(Coupling_06_2010 = (Temperature_06_2010 >= 25) & (Moisture_06_2010 >= 70))
data <- data %>%
  mutate(Coupling_07_2010 = (Temperature_07_2010 >= 25) & (Moisture_07_2010 >= 70))
data <- data %>%
  mutate(Coupling_08_2010 = (Temperature_08_2010 >= 25) & (Moisture_08_2010 >= 70))
data <- data %>%
  mutate(Coupling_09_2010 = (Temperature_09_2010 >= 25) & (Moisture_09_2010 >= 70))
data <- data %>%
  mutate(Coupling_10_2010 = (Temperature_10_2010 >= 25) & (Moisture_10_2010 >= 70))
data <- data %>%
  mutate(Coupling_11_2010 = (Temperature_11_2010 >= 25) & (Moisture_11_2010 >= 70))
data <- data %>%
  mutate(Coupling_12_2010 = (Temperature_12_2010 >= 25) & (Moisture_12_2010 >= 70))
data <- data %>%
  mutate(Coupling_01_2011 = (Temperature_01_2011 >= 25) & (Moisture_01_2011 >= 70))
data <- data %>%
  mutate(Coupling_02_2011 = (Temperature_02_2011 >= 25) & (Moisture_02_2011 >= 70))
data <- data %>%
  mutate(Coupling_03_2011 = (Temperature_03_2011 >= 25) & (Moisture_03_2011 >= 70))
data <- data %>%
  mutate(Coupling_04_2011 = (Temperature_04_2011 >= 25) & (Moisture_04_2011 >= 70))
data <- data %>%
  mutate(Coupling_05_2011 = (Temperature_05_2011 >= 25) & (Moisture_05_2011 >= 70))
data <- data %>%
  mutate(Coupling_06_2011 = (Temperature_06_2011 >= 25) & (Moisture_06_2011 >= 70))
data <- data %>%
  mutate(Coupling_07_2011 = (Temperature_07_2011 >= 25) & (Moisture_07_2011 >= 70))
data <- data %>%
  mutate(Coupling_08_2011 = (Temperature_08_2011 >= 25) & (Moisture_08_2011 >= 70))
data <- data %>%
  mutate(Coupling_09_2011 = (Temperature_09_2011 >= 25) & (Moisture_09_2011 >= 70))
data <- data %>%
  mutate(Coupling_10_2011 = (Temperature_10_2011 >= 25) & (Moisture_10_2011 >= 70))
data <- data %>%
  mutate(Coupling_11_2011 = (Temperature_11_2011 >= 25) & (Moisture_11_2011 >= 70))
data <- data %>%
  mutate(Coupling_12_2011 = (Temperature_12_2011 >= 25) & (Moisture_12_2011 >= 70))
data <- data %>%
  mutate(Coupling_01_2012 = (Temperature_01_2012 >= 25) & (Moisture_01_2012 >= 70))
data <- data %>%
  mutate(Coupling_02_2012 = (Temperature_02_2012 >= 25) & (Moisture_02_2012 >= 70))
data <- data %>%
  mutate(Coupling_03_2012 = (Temperature_03_2012 >= 25) & (Moisture_03_2012 >= 70))
data <- data %>%
  mutate(Coupling_04_2012 = (Temperature_04_2012 >= 25) & (Moisture_04_2012 >= 70))
data <- data %>%
  mutate(Coupling_05_2012 = (Temperature_05_2012 >= 25) & (Moisture_05_2012 >= 70))
data <- data %>%
  mutate(Coupling_06_2012 = (Temperature_06_2012 >= 25) & (Moisture_06_2012 >= 70))
data <- data %>%
  mutate(Coupling_07_2012 = (Temperature_07_2012 >= 25) & (Moisture_07_2012 >= 70))
data <- data %>%
  mutate(Coupling_08_2012 = (Temperature_08_2012 >= 25) & (Moisture_08_2012 >= 70))
data <- data %>%
  mutate(Coupling_09_2012 = (Temperature_09_2012 >= 25) & (Moisture_09_2012 >= 70))
data <- data %>%
  mutate(Coupling_10_2012 = (Temperature_10_2012 >= 25) & (Moisture_10_2012 >= 70))
data <- data %>%
  mutate(Coupling_11_2012 = (Temperature_11_2012 >= 25) & (Moisture_11_2012 >= 70))
data <- data %>%
  mutate(Coupling_12_2012 = (Temperature_12_2012 >= 25) & (Moisture_12_2012 >= 70))
data <- data %>%
  mutate(Coupling_01_2013 = (Temperature_01_2013 >= 25) & (Moisture_01_2013 >= 70))
data <- data %>%
  mutate(Coupling_02_2013 = (Temperature_02_2013 >= 25) & (Moisture_02_2013 >= 70))
data <- data %>%
  mutate(Coupling_03_2013 = (Temperature_03_2013 >= 25) & (Moisture_03_2013 >= 70))
data <- data %>%
  mutate(Coupling_04_2013 = (Temperature_04_2013 >= 25) & (Moisture_04_2013 >= 70))
data <- data %>%
  mutate(Coupling_05_2013 = (Temperature_05_2013 >= 25) & (Moisture_05_2013 >= 70))
data <- data %>%
  mutate(Coupling_06_2013 = (Temperature_06_2013 >= 25) & (Moisture_06_2013 >= 70))
data <- data %>%
  mutate(Coupling_07_2013 = (Temperature_07_2013 >= 25) & (Moisture_07_2013 >= 70))
data <- data %>%
  mutate(Coupling_08_2013 = (Temperature_08_2013 >= 25) & (Moisture_08_2013 >= 70))
data <- data %>%
  mutate(Coupling_09_2013 = (Temperature_09_2013 >= 25) & (Moisture_09_2013 >= 70))
data <- data %>%
  mutate(Coupling_10_2013 = (Temperature_10_2013 >= 25) & (Moisture_10_2013 >= 70))
data <- data %>%
  mutate(Coupling_11_2013 = (Temperature_11_2013 >= 25) & (Moisture_11_2013 >= 70))
data <- data %>%
  mutate(Coupling_12_2013 = (Temperature_12_2013 >= 25) & (Moisture_12_2013 >= 70))
data <- data %>%
  mutate(Coupling_01_2014 = (Temperature_01_2014 >= 25) & (Moisture_01_2014 >= 70))
data <- data %>%
  mutate(Coupling_02_2014 = (Temperature_02_2014 >= 25) & (Moisture_02_2014 >= 70))
data <- data %>%
  mutate(Coupling_03_2014 = (Temperature_03_2014 >= 25) & (Moisture_03_2014 >= 70))
data <- data %>%
  mutate(Coupling_04_2014 = (Temperature_04_2014 >= 25) & (Moisture_04_2014 >= 70))
data <- data %>%
  mutate(Coupling_05_2014 = (Temperature_05_2014 >= 25) & (Moisture_05_2014 >= 70))
data <- data %>%
  mutate(Coupling_06_2014 = (Temperature_06_2014 >= 25) & (Moisture_06_2014 >= 70))
data <- data %>%
  mutate(Coupling_07_2014 = (Temperature_07_2014 >= 25) & (Moisture_07_2014 >= 70))
data <- data %>%
  mutate(Coupling_08_2014 = (Temperature_08_2014 >= 25) & (Moisture_08_2014 >= 70))
data <- data %>%
  mutate(Coupling_09_2014 = (Temperature_09_2014 >= 25) & (Moisture_09_2014 >= 70))
data <- data %>%
  mutate(Coupling_10_2014 = (Temperature_10_2014 >= 25) & (Moisture_10_2014 >= 70))
data <- data %>%
  mutate(Coupling_11_2014 = (Temperature_11_2014 >= 25) & (Moisture_11_2014 >= 70))
data <- data %>%
  mutate(Coupling_12_2014 = (Temperature_12_2014 >= 25) & (Moisture_12_2014 >= 70))
data <- data %>%
  mutate(Coupling_01_2015 = (Temperature_01_2015 >= 25) & (Moisture_01_2015 >= 70))
data <- data %>%
  mutate(Coupling_02_2015 = (Temperature_02_2015 >= 25) & (Moisture_02_2015 >= 70))
data <- data %>%
  mutate(Coupling_03_2015 = (Temperature_03_2015 >= 25) & (Moisture_03_2015 >= 70))
data <- data %>%
  mutate(Coupling_04_2015 = (Temperature_04_2015 >= 25) & (Moisture_04_2015 >= 70))
data <- data %>%
  mutate(Coupling_05_2015 = (Temperature_05_2015 >= 25) & (Moisture_05_2015 >= 70))
data <- data %>%
  mutate(Coupling_06_2015 = (Temperature_06_2015 >= 25) & (Moisture_06_2015 >= 70))
data <- data %>%
  mutate(Coupling_07_2015 = (Temperature_07_2015 >= 25) & (Moisture_07_2015 >= 70))
data <- data %>%
  mutate(Coupling_08_2015 = (Temperature_08_2015 >= 25) & (Moisture_08_2015 >= 70))
data <- data %>%
  mutate(Coupling_09_2015 = (Temperature_09_2015 >= 25) & (Moisture_09_2015 >= 70))
data <- data %>%
  mutate(Coupling_10_2015 = (Temperature_10_2015 >= 25) & (Moisture_10_2015 >= 70))
data <- data %>%
  mutate(Coupling_11_2015 = (Temperature_11_2015 >= 25) & (Moisture_11_2015 >= 70))
data <- data %>%
  mutate(Coupling_12_2015 = (Temperature_12_2015 >= 25) & (Moisture_12_2015 >= 70))
data <- data %>%
  mutate(Coupling_01_2016 = (Temperature_01_2016 >= 25) & (Moisture_01_2016 >= 70))
data <- data %>%
  mutate(Coupling_02_2016 = (Temperature_02_2016 >= 25) & (Moisture_02_2016 >= 70))
data <- data %>%
  mutate(Coupling_03_2016 = (Temperature_03_2016 >= 25) & (Moisture_03_2016 >= 70))
data <- data %>%
  mutate(Coupling_04_2016 = (Temperature_04_2016 >= 25) & (Moisture_04_2016 >= 70))
data <- data %>%
  mutate(Coupling_05_2016 = (Temperature_05_2016 >= 25) & (Moisture_05_2016 >= 70))
data <- data %>%
  mutate(Coupling_06_2016 = (Temperature_06_2016 >= 25) & (Moisture_06_2016 >= 70))
data <- data %>%
  mutate(Coupling_07_2016 = (Temperature_07_2016 >= 25) & (Moisture_07_2016 >= 70))
data <- data %>%
  mutate(Coupling_08_2016 = (Temperature_08_2016 >= 25) & (Moisture_08_2016 >= 70))
data <- data %>%
  mutate(Coupling_09_2016 = (Temperature_09_2016 >= 25) & (Moisture_09_2016 >= 70))
data <- data %>%
  mutate(Coupling_10_2016 = (Temperature_10_2016 >= 25) & (Moisture_10_2016 >= 70))
data <- data %>%
  mutate(Coupling_11_2016 = (Temperature_11_2016 >= 25) & (Moisture_11_2016 >= 70))
data <- data %>%
  mutate(Coupling_12_2016 = (Temperature_12_2016 >= 25) & (Moisture_12_2016 >= 70))
data <- data %>%
  mutate(Coupling_01_2017 = (Temperature_01_2017 >= 25) & (Moisture_01_2017 >= 70))
data <- data %>%
  mutate(Coupling_02_2017 = (Temperature_02_2017 >= 25) & (Moisture_02_2017 >= 70))
data <- data %>%
  mutate(Coupling_03_2017 = (Temperature_03_2017 >= 25) & (Moisture_03_2017 >= 70))
data <- data %>%
  mutate(Coupling_04_2017 = (Temperature_04_2017 >= 25) & (Moisture_04_2017 >= 70))
data <- data %>%
  mutate(Coupling_05_2017 = (Temperature_05_2017 >= 25) & (Moisture_05_2017 >= 70))
data <- data %>%
  mutate(Coupling_06_2017 = (Temperature_06_2017 >= 25) & (Moisture_06_2017 >= 70))
data <- data %>%
  mutate(Coupling_07_2017 = (Temperature_07_2017 >= 25) & (Moisture_07_2017 >= 70))
data <- data %>%
  mutate(Coupling_08_2017 = (Temperature_08_2017 >= 25) & (Moisture_08_2017 >= 70))
data <- data %>%
  mutate(Coupling_09_2017 = (Temperature_09_2017 >= 25) & (Moisture_09_2017 >= 70))
data <- data %>%
  mutate(Coupling_10_2017 = (Temperature_10_2017 >= 25) & (Moisture_10_2017 >= 70))
data <- data %>%
  mutate(Coupling_11_2017 = (Temperature_11_2017 >= 25) & (Moisture_11_2017 >= 70))
data <- data %>%
  mutate(Coupling_12_2017 = (Temperature_12_2017 >= 25) & (Moisture_12_2017 >= 70))
data <- data %>%
  mutate(Coupling_01_2018 = (Temperature_01_2018 >= 25) & (Moisture_01_2018 >= 70))
data <- data %>%
  mutate(Coupling_02_2018 = (Temperature_02_2018 >= 25) & (Moisture_02_2018 >= 70))
data <- data %>%
  mutate(Coupling_03_2018 = (Temperature_03_2018 >= 25) & (Moisture_03_2018 >= 70))
data <- data %>%
  mutate(Coupling_04_2018 = (Temperature_04_2018 >= 25) & (Moisture_04_2018 >= 70))
data <- data %>%
  mutate(Coupling_05_2018 = (Temperature_05_2018 >= 25) & (Moisture_05_2018 >= 70))
data <- data %>%
  mutate(Coupling_06_2018 = (Temperature_06_2018 >= 25) & (Moisture_06_2018 >= 70))
data <- data %>%
  mutate(Coupling_07_2018 = (Temperature_07_2018 >= 25) & (Moisture_07_2018 >= 70))
data <- data %>%
  mutate(Coupling_08_2018 = (Temperature_08_2018 >= 25) & (Moisture_08_2018 >= 70))
data <- data %>%
  mutate(Coupling_09_2018 = (Temperature_09_2018 >= 25) & (Moisture_09_2018 >= 70))
data <- data %>%
  mutate(Coupling_10_2018 = (Temperature_10_2018 >= 25) & (Moisture_10_2018 >= 70))
data <- data %>%
  mutate(Coupling_11_2018 = (Temperature_11_2018 >= 25) & (Moisture_11_2018 >= 70))
data <- data %>%
  mutate(Coupling_12_2018 = (Temperature_12_2018 >= 25) & (Moisture_12_2018 >= 70))
data <- data %>%
  mutate(Coupling_01_2019 = (Temperature_01_2019 >= 25) & (Moisture_01_2019 >= 70))
data <- data %>%
  mutate(Coupling_02_2019 = (Temperature_02_2019 >= 25) & (Moisture_02_2019 >= 70))
data <- data %>%
  mutate(Coupling_03_2019 = (Temperature_03_2019 >= 25) & (Moisture_03_2019 >= 70))
data <- data %>%
  mutate(Coupling_04_2019 = (Temperature_04_2019 >= 25) & (Moisture_04_2019 >= 70))
data <- data %>%
  mutate(Coupling_05_2019 = (Temperature_05_2019 >= 25) & (Moisture_05_2019 >= 70))
data <- data %>%
  mutate(Coupling_06_2019 = (Temperature_06_2019 >= 25) & (Moisture_06_2019 >= 70))
data <- data %>%
  mutate(Coupling_07_2019 = (Temperature_07_2019 >= 25) & (Moisture_07_2019 >= 70))
data <- data %>%
  mutate(Coupling_08_2019 = (Temperature_08_2019 >= 25) & (Moisture_08_2019 >= 70))
data <- data %>%
  mutate(Coupling_09_2019 = (Temperature_09_2019 >= 25) & (Moisture_09_2019 >= 70))
data <- data %>%
  mutate(Coupling_10_2019 = (Temperature_10_2019 >= 25) & (Moisture_10_2019 >= 70))
data <- data %>%
  mutate(Coupling_11_2019 = (Temperature_11_2019 >= 25) & (Moisture_11_2019 >= 70))
data <- data %>%
  mutate(Coupling_12_2019 = (Temperature_12_2019 >= 25) & (Moisture_12_2019 >= 70))
data <- data %>%
  mutate(Coupling_01_2020 = (Temperature_01_2020 >= 25) & (Moisture_01_2020 >= 70))
data <- data %>%
  mutate(Coupling_02_2020 = (Temperature_02_2020 >= 25) & (Moisture_02_2020 >= 70))
data <- data %>%
  mutate(Coupling_03_2020 = (Temperature_03_2020 >= 25) & (Moisture_03_2020 >= 70))
data <- data %>%
  mutate(Coupling_04_2020 = (Temperature_04_2020 >= 25) & (Moisture_04_2020 >= 70))
data <- data %>%
  mutate(Coupling_05_2020 = (Temperature_05_2020 >= 25) & (Moisture_05_2020 >= 70))
data <- data %>%
  mutate(Coupling_06_2020 = (Temperature_06_2020 >= 25) & (Moisture_06_2020 >= 70))
data <- data %>%
  mutate(Coupling_07_2020 = (Temperature_07_2020 >= 25) & (Moisture_07_2020 >= 70))
data <- data %>%
  mutate(Coupling_08_2020 = (Temperature_08_2020 >= 25) & (Moisture_08_2020 >= 70))
data <- data %>%
  mutate(Coupling_09_2020 = (Temperature_09_2020 >= 25) & (Moisture_09_2020 >= 70))
data <- data %>%
  mutate(Coupling_10_2020 = (Temperature_10_2020 >= 25) & (Moisture_10_2020 >= 70))
data <- data %>%
  mutate(Coupling_11_2020 = (Temperature_11_2020 >= 25) & (Moisture_11_2020 >= 70))
data <- data %>%
  mutate(Coupling_12_2020 = (Temperature_12_2020 >= 25) & (Moisture_12_2020 >= 70))
data <- data %>%
  mutate(Coupling_01_2021 = (Temperature_01_2021 >= 25) & (Moisture_01_2021 >= 70))
data <- data %>%
  mutate(Coupling_02_2021 = (Temperature_02_2021 >= 25) & (Moisture_02_2021 >= 70))
data <- data %>%
  mutate(Coupling_03_2021 = (Temperature_03_2021 >= 25) & (Moisture_03_2021 >= 70))
data <- data %>%
  mutate(Coupling_04_2021 = (Temperature_04_2021 >= 25) & (Moisture_04_2021 >= 70))
data <- data %>%
  mutate(Coupling_05_2021 = (Temperature_05_2021 >= 25) & (Moisture_05_2021 >= 70))
data <- data %>%
  mutate(Coupling_06_2021 = (Temperature_06_2021 >= 25) & (Moisture_06_2021 >= 70))
data <- data %>%
  mutate(Coupling_07_2021 = (Temperature_07_2021 >= 25) & (Moisture_07_2021 >= 70))
data <- data %>%
  mutate(Coupling_08_2021 = (Temperature_08_2021 >= 25) & (Moisture_08_2021 >= 70))
data <- data %>%
  mutate(Coupling_09_2021 = (Temperature_09_2021 >= 25) & (Moisture_09_2021 >= 70))
data <- data %>%
  mutate(Coupling_10_2021 = (Temperature_10_2021 >= 25) & (Moisture_10_2021 >= 70))
data <- data %>%
  mutate(Coupling_11_2021 = (Temperature_11_2021 >= 25) & (Moisture_11_2021 >= 70))
data <- data %>%
  mutate(Coupling_12_2021 = (Temperature_12_2021 >= 25) & (Moisture_12_2021 >= 70))
data <- data %>%
  mutate(Coupling_01_2022 = (Temperature_01_2022 >= 25) & (Moisture_01_2022 >= 70))
data <- data %>%
  mutate(Coupling_02_2022 = (Temperature_02_2022 >= 25) & (Moisture_02_2022 >= 70))
data <- data %>%
  mutate(Coupling_03_2022 = (Temperature_03_2022 >= 25) & (Moisture_03_2022 >= 70))
data <- data %>%
  mutate(Coupling_04_2022 = (Temperature_04_2022 >= 25) & (Moisture_04_2022 >= 70))
data <- data %>%
  mutate(Coupling_05_2022 = (Temperature_05_2022 >= 25) & (Moisture_05_2022 >= 70))
data <- data %>%
  mutate(Coupling_06_2022 = (Temperature_06_2022 >= 25) & (Moisture_06_2022 >= 70))
data <- data %>%
  mutate(Coupling_07_2022 = (Temperature_07_2022 >= 25) & (Moisture_07_2022 >= 70))
data <- data %>%
  mutate(Coupling_08_2022 = (Temperature_08_2022 >= 25) & (Moisture_08_2022 >= 70))
data <- data %>%
  mutate(Coupling_09_2022 = (Temperature_09_2022 >= 25) & (Moisture_09_2022 >= 70))
data <- data %>%
  mutate(Coupling_10_2022 = (Temperature_10_2022 >= 25) & (Moisture_10_2022 >= 70))
data <- data %>%
  mutate(Coupling_11_2022 = (Temperature_11_2022 >= 25) & (Moisture_11_2022 >= 70))

# Remove rows containing NA values
data_clean <- na.omit(data)

# Write the updated data to a new CSV file
write.csv(data_clean, "coupling_all_years_all_months_25C_m70.csv", row.names = FALSE)

# Calculate the number of TRUE values in each row for Coupling columns within the same year

library(dplyr)
library(tidyr)

# Read the CSV file
data <- read.csv("coupling_all_years_all_months_25C_m70.csv")



# Calculate the number of TRUE values in each row for Coupling columns within the same year
data$TRUE_Count_2003 <- rowSums(data[, grepl("Coupling_.*_2003", colnames(data))] == TRUE, na.rm = TRUE)
data$TRUE_Count_2004 <- rowSums(data[, grepl("Coupling_.*_2004", colnames(data))] == TRUE, na.rm = TRUE)
data$TRUE_Count_2005 <- rowSums(data[, grepl("Coupling_.*_2005", colnames(data))] == TRUE, na.rm = TRUE)
data$TRUE_Count_2006 <- rowSums(data[, grepl("Coupling_.*_2006", colnames(data))] == TRUE, na.rm = TRUE)
data$TRUE_Count_2007 <- rowSums(data[, grepl("Coupling_.*_2007", colnames(data))] == TRUE, na.rm = TRUE)
data$TRUE_Count_2008 <- rowSums(data[, grepl("Coupling_.*_2008", colnames(data))] == TRUE, na.rm = TRUE)
data$TRUE_Count_2009 <- rowSums(data[, grepl("Coupling_.*_2009", colnames(data))] == TRUE, na.rm = TRUE)
data$TRUE_Count_2010 <- rowSums(data[, grepl("Coupling_.*_2010", colnames(data))] == TRUE, na.rm = TRUE)
data$TRUE_Count_2011 <- rowSums(data[, grepl("Coupling_.*_2011", colnames(data))] == TRUE, na.rm = TRUE)
data$TRUE_Count_2012 <- rowSums(data[, grepl("Coupling_.*_2012", colnames(data))] == TRUE, na.rm = TRUE)
data$TRUE_Count_2013 <- rowSums(data[, grepl("Coupling_.*_2013", colnames(data))] == TRUE, na.rm = TRUE)
data$TRUE_Count_2014 <- rowSums(data[, grepl("Coupling_.*_2014", colnames(data))] == TRUE, na.rm = TRUE)
data$TRUE_Count_2015 <- rowSums(data[, grepl("Coupling_.*_2015", colnames(data))] == TRUE, na.rm = TRUE)
data$TRUE_Count_2016 <- rowSums(data[, grepl("Coupling_.*_2016", colnames(data))] == TRUE, na.rm = TRUE)
data$TRUE_Count_2017 <- rowSums(data[, grepl("Coupling_.*_2017", colnames(data))] == TRUE, na.rm = TRUE)
data$TRUE_Count_2018 <- rowSums(data[, grepl("Coupling_.*_2018", colnames(data))] == TRUE, na.rm = TRUE)
data$TRUE_Count_2019 <- rowSums(data[, grepl("Coupling_.*_2019", colnames(data))] == TRUE, na.rm = TRUE)
data$TRUE_Count_2020 <- rowSums(data[, grepl("Coupling_.*_2020", colnames(data))] == TRUE, na.rm = TRUE)
data$TRUE_Count_2021 <- rowSums(data[, grepl("Coupling_.*_2021", colnames(data))] == TRUE, na.rm = TRUE)
data$TRUE_Count_2022 <- rowSums(data[, grepl("Coupling_.*_2022", colnames(data))] == TRUE, na.rm = TRUE)

# Remove columns that don't start with 'TRUE_Count'
data_filtered <- data %>%
  select(matches("^(Species|Elevation|TRUE_Count)"))

print(data_filtered)
write.csv(data_filtered, "TRUEcounts_all_years_25C_m70.csv")


Make coupling figure for specific locations
# Load required libraries
library(readr)
library(dplyr)
library(tidyr)
library(ggplot2)

# Read the CSV file
data <- read_csv("Location data.csv", show_col_types = FALSE)

# Remove rows containing NA values
data <- data %>% drop_na()

# Filter the columns starting with "Coupling"
coupling_columns <- grep("^Coupling", colnames(data), value = TRUE)

# Extract years from column names
years <- unique(sapply(coupling_columns, function(x) { gsub("^Coupling_([0-9]{4}).*$", "\\1", x)}))

# Select the relevant columns
data_selected <- data %>% select(c(Species, coupling_columns))

# Order the Species names alphabetically
data_selected$Species <- factor(data_selected$Species, levels = sort(unique(data_selected$Species)))

# Convert the data frame to a long format suitable for ggplot2
data_long <- data_selected %>% 
  mutate(row = row_number()) %>%
  pivot_longer(cols = -c(row, Species), names_to = "Column", values_to = "Value") %>%
  mutate(Species_color = ifelse(Value, as.character(Species), "FALSE"))

# Reverse the row order
data_long$row <- nrow(data_selected) + 1 - data_long$row

# Set the factor levels for the "Column" variable
data_long$Column <- factor(data_long$Column, levels = coupling_columns)

# Define a function that generates labels
generate_labels <- function(breaks){
  years <- sapply(strsplit(breaks, "_"), `[`, 3)
  labels <- rep("", length(years))
  labels[which(!duplicated(years))] <- unique(years)
  return(labels)
}

# Generate yearly breaks for gridlines
generate_breaks <- function(breaks){
  years <- sapply(strsplit(breaks, "_"), `[`, 3)
  return(breaks[which(!duplicated(years))])
}

# Create the plot
heatmap <- ggplot(data_long, aes(x = Column, y = row, fill = Species_color)) +
  geom_tile() +
  scale_fill_manual(values = c("FALSE" = "white", 
                               "Striga asiatica" = "#F2003C",
                               "Striga hermonthica" = "magenta",
                               "Striga gesnerioides" = "#FFC0CB",
                               "Orobanche minor" = "#1C1CF0",
                               "Orobanche crenata" = "#CCCCFF",
                               "Orobanche cumana" = "cyan",
                               "Phelipanche ramosa" = "#00A550",
                               "Phelipanche aegyptiaca" = "#39FF14"),
                    guide = "none") +
  theme_minimal() +
  theme(axis.text.x = element_text(angle = 45, vjust = 0.5, hjust = 1),
        axis.text.y = element_blank(), 
        axis.title.x = element_text(margin = margin(t = 0)),
        axis.title.y = element_text(margin = margin(r = 10)),
        panel.background = element_rect(fill = "white", colour = "white"),
        panel.grid = element_blank(),
        panel.grid.major.x = element_line(colour = "black")) +
  scale_x_discrete(labels = generate_labels, breaks = generate_breaks,
                   expand = expansion(mult = c(0, 1))) +
  scale_y_discrete(expand = expansion(mult = c(0, 1))) +
  labs(x = "Time", y = "Occurrence")

# Save the figure
ggsave("figure.svg", width = 4.25, height = 4, heatmap)
ggsave("figure.png", width = 4.25, height = 4, dpi = 300, heatmap)

# Display the figure
print(heatmap)


# Do statistical test on heat-moisture couplings

# Load required libraries
library(dplyr)
library(tidyr)
library(purrr)
library(broom)

# Read the data from CSV file
data <- read.csv("Location data.csv")

# Create a time index from the column names
# Convert column names like "Coupling_01_2004" to a date
data_long <- data %>%
  mutate(id = row_number()) %>%
  select(id, starts_with("Coupling_")) %>%
  pivot_longer(cols = -id, names_to = "date", values_to = "value") %>%
  mutate(date = as.Date(paste0("01_", gsub("Coupling_", "", date)), format = "%d_%m_%Y"),
         value = as.numeric(value))

# Fit a logistic regression model to each row
models <- data_long %>%
  group_by(id) %>%
  nest() %>%
  mutate(model = map(data, ~glm(value ~ date, data = ., family = binomial)))

# Calculate the number of days from the first year to the current year
days_passed <- as.integer(difftime(as.Date("2023-01-01"), as.Date("2004-01-01"), units = "days"))

# Extract the estimates and p-values for the date coefficient and calculate the odds and odds increase
results <- models %>%
  mutate(tidy = map(model, broom::tidy)) %>%
  unnest(tidy) %>%
  filter(term == "date") %>%
  mutate(estimate_odds = exp(estimate), # Convert estimate from log-odds to odds
         p.value = format.pval(p.value, digits = 2, eps = .001), # Format p-value to be non-scientific
         odds_total_increase = estimate_odds ^ days_passed, # Calculate yearly odds increase
         yearly_prob_increase = ((1/(1+1/estimate_odds)) - 0.5) * 100, # calculate yearly probability increase (assumes starting probability was 0.5)
         total_prob_increase = ((1/(1+1/odds_total_increase)) - 0.5) * 100) %>% # calculate total probability increase (assumes starting probability was 0.5)
  select(id, estimate_odds, odds_total_increase, yearly_prob_increase, total_prob_increase, p.value)

write.csv(results, "coupling_statistics.csv", row.names = FALSE)
print(results)


# Create pie charts for Striga asiatica coupling trends per elevation

# load required libraries
library(tidyverse)
library(gridExtra)
library(gtable)

# read the data
df <- read.csv('Striga asiatica coupling percentages.csv', header = TRUE)

# create a list to store the ggplot objects
plots_list <- list()

# define the colors for each category
colors <- c("Increase" = "#1F75FE", "Decrease" = "#E60026", "No.change" = "#F5F5F5")

# create a pie chart for each group
for (i in 1:nrow(df)) {
  # extract the data for this group
  group_data <- df[i, 2:4]
  group_name <- as.character(df[i, 1])
  
  # transform data into a format suitable for ggplot2
  pie_data <- data.frame(Category = names(group_data), Percentage = as.numeric(group_data))
  
  # create the pie chart
  p <- ggplot(pie_data, aes(x = "", y = Percentage, fill = Category)) +
    geom_bar(width = 1, stat = "identity") +
    geom_text(aes(label = paste0(round(Percentage, 1), "%")), position = position_stack(vjust = 0.5)) +
    coord_polar("y", start = 0) +
    scale_fill_manual(values = colors) +
    theme_void() +
    labs(title = paste("Elevation:", group_name))
  
  # if it's the first plot, get the legend
  if (i == 1) {
    my_legend <- gtable_filter(ggplot_gtable(ggplot_build(p)), "guide-box") 
  }
  
  # remove legend from individual plots
  p <- p + theme(legend.position = "none")

  # store the plot in the list
  plots_list[[i]] <- p
}

# arrange the plots and legend
combined_plot <- arrangeGrob(grobs = c(plots_list, list(my_legend)), ncol = 2, layout_matrix = rbind(c(1, 2), c(3, 3)))

# save the combined plot
ggsave("Striga_asiatica_coupling_percentages_for_pie_chart.svg", plot = combined_plot, width = 8.5, height = 4.25)