# Modern SQL Data Warehouse Project

Welcome to my **Modern SQL Data Warehouse** project!  
This repository showcases a real-world approach to building a modern data warehouse from the ground up using SQL Server. It is designed as a professional portfolio project to demonstrate my learning and capabilities as an aspiring data engineer, with inspiration drawn from enterprise-level implementations.

---
![High Level Architecture](https://github.com/shubhamsahu03/sql-datawarehouse-project/blob/main/docs/High%20Level%20Architecture%20Design.drawio.png)

---
## Project Overview

This project walks through the end-to-end development of a modern SQL data warehouse, consolidating data from multiple source systems (CRM and ERP) provided as CSV files. The goal is to build a scalable, analytics-optimized data architecture using best practices in data engineering and modeling.

It follows the **Medallion Architecture** with clearly defined layers:

- **Bronze Layer (Raw Ingestion):**  
  Loads raw source data with minimal processing, ensuring auditability and traceability.

- **Silver Layer (Cleansed Data):**  
  Performs data standardization, cleansing, normalization, and enrichment.

- **Gold Layer (Business Ready):**  
  Builds dimensional models using star schemas for analytics and BI use cases.

---

## Key Features & Skills Demonstrated

- **Modern Data Architecture:**  
  Applied the Medallion Architecture pattern to organize the data lifecycle.

- **ETL Development in SQL:**  
  Created robust SQL-based ETL pipelines using bulk insert and transformation scripts.

- **Data Cleansing & Quality Checks:**  
  Resolved duplicates, nulls, invalid formats, and inconsistencies.

- **Data Modeling:**  
  Designed and implemented star schemas with surrogate keys and fact/dimension tables.

- **Documentation & Project Management:**  
  Used Notion and Draw.io to document architecture and plan deliverables.

- **Version Control:**  
  Structured GitHub repository with scripts, diagrams, and validations.

---

## Technologies & Tools

- **SQL Server Express & SSMS:** Database engine and IDE for all development.
- **Git & GitHub:** Source control and versioning.
- **Draw.io:** For data flow and lineage diagrams.
- **Notion:** Project planning and documentation workspace.
- **CSV Files:** Flat files as input for CRM and ERP datasets.

---

## Getting Started

### Environment Setup

1. Install SQL Server Express and SSMS.
2. Clone the repository and download the datasets.
3. (Optional) Create free accounts for Notion and Draw.io.

### Bronze Layer

- Create base tables and load CSV files using bulk inserts.
- Ensure schema validation and data completeness.

### Silver Layer

- Apply transformations to cleanse, normalize, and enrich the data.
- Add audit columns and ensure quality validation.

### Gold Layer

- Design and build dimensional models with fact/dimension tables.
- Apply business logic and aggregations for analysis.

### Testing & Documentation

- Run validation scripts to ensure integrity.
- Use Draw.io for diagrams and Notion for structured documentation.

---

## Project Outcomes

- Practiced designing modern SQL-based data warehouse architectures.
- Implemented ETL logic using only SQL Server tools.
- Understood the value of layered data modeling and clean separation between raw and refined data.
- Gained experience managing a data engineering project with version control and documentation.

---

## License

This project is licensed under the MIT License – see the LICENSE file for details.

---

## About Me

I am **Shubham Sahu**, an aspiring data engineer passionate about building scalable data systems and insightful analytics pipelines. This project is a part of my journey to become a well-rounded data engineering professional by mastering foundational concepts and hands-on execution.

