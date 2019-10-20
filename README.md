# ASTHMA ER VISITS VS AIR QUALITY INDEX BY COUNTY IN CALIFORNIA IN 2012
## 1.	Extraction: Downloaded two csv files from two different sources:
https://data.world/healthdata/asthma-ed-visit-rates-by-zip
Get Number of Visits for Children group by COUNTY
 
https://www.epa.gov/outdoor-air-quality-data/download-daily-data
Get Daily AQL Value by County

## 2.	Transformation: 
-	In Python:
o	Read both csv files to Pandas
o	Put both files to two dataframes named “ashma_visit_by_zip_df” and “Air_Quality_by_Zip_df”
o	Cleaned up two dataframes:
	Renamed columns to eliminate space in name for “Number of Visits”
	Grouped by country, average “Daily_AQI_VALUE” and average “Number of Visits”
	Lowercased for column County to make it unify with county’s format from the other dataframe
	Picked only needed columns: County, Number of Visits and Daily_AQI_VALUE from two dataframes
## 3.	Load: 
-	Use Relational Database: Join, load to Postgres.
o	Loaded two clean dataframes to PgAdmin to two new tables named “ashma_updated” and “aqi_by_mean”
o	Joined two tables by County to get the average AQI and average Number of ER Ashma Visits.
## Final thoughts:
Purpose of the project is to visualize a correlation, if any, between the air quality and numbers of visit for asthma patients in California. However, there is no obvious correlation being seen. Thus, more data will be needed to draw meaningful conclusions. 
