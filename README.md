# Movie Rental Data Warehouse

This project builds a data warehouse from the Sakila movie rental OLTP database.

## Team Members
- Izz Aldeen Tayseer Mansour
- Mona Tayseer Nazzal
- Mahmoud Abdel Halim

## Tools Used
- MySQL Server
- MySQL Workbench
- Python
- Pandas
- SQLAlchemy
- Jupyter Notebook
- VS Code

## Project Structure
- `notebooks/`: Pandas ETL implementation
- `sql/`: SQL scripts for creating the data warehouse and analytical queries
- `diagrams/`: OLTP and dimensional model diagrams
- `report/`: final project report

## Data Warehouse Tables
Dimensions:
- dim_date
- dim_customer
- dim_film
- dim_store
- dim_staff

Fact Tables:
- fact_rental
- fact_payment
- fact_inventory_snapshot

## ETL Summary
The ETL process extracts data from the Sakila OLTP database, transforms it using Pandas, and loads the final dimensional model into the `movie_rental_dw` MySQL database.

## Final Loaded Row Counts
| Table | Rows |
|---|---:|
| dim_date | 90 |
| dim_customer | 599 |
| dim_film | 1000 |
| dim_store | 2 |
| dim_staff | 2 |
| fact_inventory_snapshot | 1521 |
| fact_rental | 16044 |
| fact_payment | 16044 |
