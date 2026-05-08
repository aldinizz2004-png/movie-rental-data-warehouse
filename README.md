# Movie Rental Data Warehouse Design

## Student Information
**Name:** Izz Aldeen Mansour  
 

## Course
Data Warehousing / Data Architecture

## Assignment Topic
High-Level Data Warehouse Design from an OLTP Movie Rental System

## Project Description
This project presents a high-level Data Warehouse design for a Movie Rental OLTP system. The purpose of the project is to transform an operational database structure into a dimensional model that supports analytical reporting and business decision-making.

The project focuses on identifying business questions, selecting business processes, designing fact tables and dimension tables, creating a dimensional model diagram, planning the ETL process, and defining data quality rules.

## Project Objectives
- Understand the difference between OLTP systems and Data Warehouses.
- Identify analytical business questions for a movie rental business.
- Design suitable fact tables and dimension tables.
- Define the grain and measures of each fact table.
- Create a dimensional model diagram.
- Explain the Extract, Transform, and Load (ETL) process.
- Define data quality checks for the Data Warehouse.

## Main Business Processes
- Rental transactions
- Payment transactions
- Film inventory and availability
- Customer rental behavior
- Store performance
- Staff processing activity

## Fact Tables
- `Fact_Rental`
- `Fact_Payment`
- `Fact_Inventory_Snapshot`

## Dimension Tables
- `Dim_Date`
- `Dim_Customer`
- `Dim_Film`
- `Dim_Category`
- `Dim_Store`
- `Dim_Staff`
- `Dim_Location`
- `Dim_Language`
- `Dim_Actor`

## Bridge Tables
- `Bridge_Film_Category`
- `Bridge_Film_Actor`

## Repository Structure
```text
movie-rental-data-warehouse/
│
├── README.md
│
├── report/
│   ├── Movie_Rental_Data_Warehouse_Report_Izz_Aldeen_Mansour.docx
│   └── Movie_Rental_Data_Warehouse_Report_Izz_Aldeen_Mansour.pdf
│
├── diagrams/
│   ├── dimensional_model_diagram.png
│   └── dimensional_model_dbml.txt
│
├── schema/
│   └── schema_notes.md
│
└── docs/
    └── Data_Warehouse_Assignment_Movie_Rental.pdf
```

## Repository Contents
- **report/**: Contains the final report in Word and PDF formats.
- **diagrams/**: Contains the dimensional model diagram and DBML diagram source.
- **schema/**: Contains notes about the OLTP source schema used in the design.
- **docs/**: Contains the assignment PDF and supporting documentation.

## Tools Used
- Microsoft Word
- dbdiagram.io
- GitHub

## Notes
This project is a high-level Data Warehouse design assignment. It does not require full physical implementation of the Data Warehouse. The focus is on dimensional modeling, ETL planning, business analysis, and data quality considerations.

## Author
Izz Aldeen Mansour  

