DROP DATABASE IF EXISTS movie_rental_dw;
CREATE DATABASE movie_rental_dw;
USE movie_rental_dw;

-- =========================
-- Dimension Tables
-- =========================

CREATE TABLE dim_date (
    date_key INT PRIMARY KEY,
    full_date DATE NOT NULL,
    day_number INT,
    day_name VARCHAR(20),
    month_number INT,
    month_name VARCHAR(20),
    quarter_number INT,
    year_number INT
);

CREATE TABLE dim_customer (
    customer_key INT AUTO_INCREMENT PRIMARY KEY,
    customer_id INT NOT NULL,
    full_name VARCHAR(100),
    email VARCHAR(100),
    active BOOLEAN,
    address VARCHAR(255),
    district VARCHAR(100),
    city VARCHAR(100),
    country VARCHAR(100),
    source_last_update DATETIME
);

CREATE TABLE dim_film (
    film_key INT AUTO_INCREMENT PRIMARY KEY,
    film_id INT NOT NULL,
    title VARCHAR(255),
    description TEXT,
    release_year INT,
    language_name VARCHAR(50),
    category_name VARCHAR(50),
    rental_duration INT,
    rental_rate DECIMAL(5,2),
    length INT,
    replacement_cost DECIMAL(6,2),
    rating VARCHAR(10),
    source_last_update DATETIME
);

CREATE TABLE dim_store (
    store_key INT AUTO_INCREMENT PRIMARY KEY,
    store_id INT NOT NULL,
    manager_staff_id INT,
    address VARCHAR(255),
    district VARCHAR(100),
    city VARCHAR(100),
    country VARCHAR(100),
    source_last_update DATETIME
);

CREATE TABLE dim_staff (
    staff_key INT AUTO_INCREMENT PRIMARY KEY,
    staff_id INT NOT NULL,
    full_name VARCHAR(100),
    email VARCHAR(100),
    active BOOLEAN,
    store_id INT,
    address VARCHAR(255),
    city VARCHAR(100),
    country VARCHAR(100),
    source_last_update DATETIME
);

-- =========================
-- Fact Tables
-- =========================

CREATE TABLE fact_rental (
    rental_fact_key INT AUTO_INCREMENT PRIMARY KEY,
    rental_id INT NOT NULL,
    rental_date_key INT,
    return_date_key INT,
    customer_key INT,
    film_key INT,
    store_key INT,
    staff_key INT,
    rental_count INT DEFAULT 1,
    rental_duration_days INT,
    expected_rental_duration INT,
    late_return_flag BOOLEAN,
    late_days INT,

    FOREIGN KEY (rental_date_key) REFERENCES dim_date(date_key),
    FOREIGN KEY (return_date_key) REFERENCES dim_date(date_key),
    FOREIGN KEY (customer_key) REFERENCES dim_customer(customer_key),
    FOREIGN KEY (film_key) REFERENCES dim_film(film_key),
    FOREIGN KEY (store_key) REFERENCES dim_store(store_key),
    FOREIGN KEY (staff_key) REFERENCES dim_staff(staff_key)
);

CREATE TABLE fact_payment (
    payment_fact_key INT AUTO_INCREMENT PRIMARY KEY,
    payment_id INT NOT NULL,
    payment_date_key INT,
    customer_key INT,
    staff_key INT,
    film_key INT,
    store_key INT,
    rental_id INT,
    payment_count INT DEFAULT 1,
    payment_amount DECIMAL(8,2),

    FOREIGN KEY (payment_date_key) REFERENCES dim_date(date_key),
    FOREIGN KEY (customer_key) REFERENCES dim_customer(customer_key),
    FOREIGN KEY (staff_key) REFERENCES dim_staff(staff_key),
    FOREIGN KEY (film_key) REFERENCES dim_film(film_key),
    FOREIGN KEY (store_key) REFERENCES dim_store(store_key)
);

CREATE TABLE fact_inventory_snapshot (
    inventory_snapshot_key INT AUTO_INCREMENT PRIMARY KEY,
    film_key INT,
    store_key INT,
    inventory_count INT,

    FOREIGN KEY (film_key) REFERENCES dim_film(film_key),
    FOREIGN KEY (store_key) REFERENCES dim_store(store_key)
);

-- =========================
-- Verification
-- =========================

SHOW TABLES;
