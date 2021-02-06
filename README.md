# ETL Project
Extract, Transform, and Load

Data will be extracted from two public data sources:  HAR.com and TEA.gov.  HAR.com will provide active home listings for homes located within the Houston Independent School District. TEA.gov will provide accountability ratings for schools that belong to the Houston Independent School District.

Five SQL tables will be created from the two .csv files exported from the two websites:
1. Location - Address and subdivision information for each home listing.
2. Schools - District and school names for each home listing.
3. School_Ratings - Ratings of each school.
4. Home_Features - Year built, number of bedrooms, and similar information for each home listing.
5. Sales_Data - List price, days on market, and similar information for each home listing.

Data transformations may include column deletion, management of null or NaN fields, data type format, and sorting.

Four tables will inlcude the unique MLS number as a primary key. School_Ratings table will have the school name as its primary key and the school names in the Schools table will be foreign keys.

With the creation of the database the tables, in the future, can then be filtered or joined to satisfy the users intent.  A user who only wants to view homes with "A" rated elementary schools on zip code 77006 can view available homes.
