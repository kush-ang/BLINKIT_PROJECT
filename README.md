# End-to-End Blinkit Sales & Supply Chain Analytics Project

## Project Overview
This project establishes a complete data analytics pipeline to process raw transactional data, automate database operations, and deliver interactive business intelligence dashboards. The primary focus is to optimize sales tracking, evaluate delivery fulfillment, and monitor real-time stock levels to prevent inventory depletion risks.

---

## Tools & Technologies Used
* **Python (Pandas):** For Data Extraction, Profiling, Cleaning, and Transformation (ETL).
* **SQL (MySQL/Relational Database):** For Data Ingestion, Schema Setup, and Exploratory Database Queries.
* **Power BI:** For Relational Data Modeling, Visualizations, and UI Dashboard Design.
* **DAX (Data Analysis Expressions):** For creating custom calculated columns and metrics to drive business logic.

---

##  Project Workflow & Core Architecture

### 1. Data Cleaning & Transformation (Python Stage)
* Imported essential libraries to load, inspect, and profile the initial structural rows and columns.
* Cleaned the dataset by identifying and treating missing values and removing duplicate records.
* Performed data type casting by converting critical date and delivery time columns from text objects into proper date-time formats.
* Automated the pipeline by establishing a database connection to export the clean data frames securely into the SQL database without row indices.

### 2. Database Engineering & Exploration (SQL Stage)
* Created a dedicated relational database repository to securely manage the transferred datasets.
* Formulated and executed multiple analytical queries to validate data distribution post-ingestion.
* Extracted core baseline metrics directly from the tables, including product counts, revenue by segments, sales trends over time, and customer payment methods.

### 3. Relational Data Modeling (Power BI Stage)
* Imported the final database tables into Power BI Desktop.
* Structured a highly optimized **Star Schema** data model by building proper relationships between dimensions and fact tables.
* Configured proper filtering directions to ensure seamless drill-down behavior across the dynamic layout.

### 4. Dashboard Design & Insights (Power BI & DAX)
* Designed a multi-page interactive dashboard focusing on commercial performance and stock velocity.
* Built custom DAX formulas to create key business metrics (Total Orders, Average Order Value, and Revenue Aggregations).
* Implemented custom inventory tracking logic using DAX to calculate real-time current stock and flag low-stock threshold items.
* Applied advanced dashboard controls like slicers and customized visual interactions to give users complete filtering flexibility.

---

##  Project Walkthrough & Contact
* **Project Video Walkthrough:** https://drive.google.com/file/d/1zRONN6sR-ZrDWpodyTYgrx2J-TiJ_K7D/view?usp=sharing
* **GitHub Repository:** https://github.com/kush-ang/BLINKIT_PROJECT.git
