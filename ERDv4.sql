

CREATE TABLE "MLS" (
    "MLS" int   NOT NULL,
    "Street_Number" varchar(6)   NOT NULL,
    "Street_Name" varchar(50)   NOT NULL,
    "Unit" varchar(6),
    "City" varchar(25)   NOT NULL,
    "Zip" int   NOT NULL,
    "County" varchar(20)   NOT NULL,
    "Subdivision" varchar(25),
    "Home_Type" varchar(25)   NOT NULL,
    "Year_Built" int,
    "Bedrooms" int,
    "Full_Baths" int,
    "Half_Baths" int,
    "Total_Baths" float,
    "Room_Count" int,
    "Fireplaces" int,
    "Stories" int,
    "Pool_Private" varchar(5),
    "Garages" int,
    "Style" varchar(25)   NOT NULL,
    "List_Price" int   NOT NULL,
    "Market_Area" varchar(25)   NOT NULL,
    "Area" int,
    "DOM" int,
    "CDOM" int,
    "List_Date" varchar(25)   NOT NULL,
    "School_District" int   NOT NULL,
    "Elementary" varchar(25)   NOT NULL,
    "High_School" varchar(25)   NOT NULL,
    CONSTRAINT "pk_MLS" PRIMARY KEY (
        "MLS"
     )
);

CREATE TABLE "School_Rating" (
    "Campus_Number" int   NOT NULL,
    "School" varchar(50)   NOT NULL,
    "District" varchar(50)   NOT NULL,
    "2019_Rating" varchar(2)   NOT NULL,
    "Yrs_Unacceptable" int   NOT NULL,
    CONSTRAINT "pk_School_Rating" PRIMARY KEY (
        "School"
     )
);

ALTER TABLE "MLS" ADD CONSTRAINT "fk_MLS_Elementary" FOREIGN KEY("Elementary")
REFERENCES "School_Rating" ("School");

ALTER TABLE "MLS" ADD CONSTRAINT "fk_MLS_High_School" FOREIGN KEY("High_School")
REFERENCES "School_Rating" ("School");
