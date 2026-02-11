<img width="1536" height="1024" alt="file_00000000c85c71f4b68b1922254375af (1)" src="https://github.com/user-attachments/assets/4a7c2e28-5cdc-4800-96ee-a679b420b427" />

# 📊 Silcare Sales Analytics -- End-to-End Data Warehouse & Business Insights Project

## 🔎 Executive Summary

This project presents a complete **end-to-end sales analytics solution**
built using a structured, enterprise-style data architecture.

The goal was to transform raw transactional sales data into a
**decision-ready analytical layer**, enabling management to monitor
performance, identify growth drivers, and detect revenue concentration
risks.

The project simulates a real-world BI workflow: Raw CSV → Data Cleaning
→ Data Warehouse (Star Schema) → KPI Layer → Visualization → Executive
Presentation

------------------------------------------------------------------------

## 🎯 Business Problem

A cosmetics company (Silcare) needs visibility into:

-   Overall revenue performance
-   Monthly sales dynamics
-   Product contribution to revenue
-   Revenue concentration among customers
-   Trends of top-performing products over time

The company lacks: - Structured data model - Defined KPIs - Standardized
reporting layer - Visual performance insights

------------------------------------------------------------------------

## 🧠 Solution Overview

I designed and implemented a layered analytics architecture:

1.  Raw data ingestion
2.  Data cleaning & transformation
3.  Dimensional modeling (Star Schema)
4.  Fact table creation
5.  KPI & analytical marts
6.  Visualization layer in R
7.  Executive-ready PowerPoint summary

------------------------------------------------------------------------

## 🏗️ Architecture

### Data Flow

Raw CSV → Staging → Dimensions → Fact Table → KPI Views → Visualizations

### Warehouse Design

The SQL layer follows a **classic Star Schema**:

-   **Fact table:** `fact_sales`
-   **Dimensions:**
    -   `dim_product`
    -   `dim_customer`
    -   `dim_date`

This structure enables: - Scalable reporting - Flexible aggregations -
Performance-friendly queries - BI tool integration readiness

------------------------------------------------------------------------

## 📂 Repository Structure

silcare_sales_data_analysis/
│
├── data/
│ ├── raw/ # original dataset
│ └── processed/ # cleaned dataset
│
├── sql/
│ ├── schema/ # DDL (staging, dimensions, fact)
│ ├── etl/ # loading logic
│ ├── marts/ # KPI & reporting views
│ └── ad_hoc/ # business analysis queries
│
├── r_visualizations/ # R scripts + generated charts
│
├── power_query_excel/ # Excel Power Query transformation example
│
├── presentation/ # business-facing PPT summary
│
└── docs/ # architecture documentation
------------------------------------------------------------------------

## 🗄️ SQL Layer

The SQL implementation is divided into logical layers:

### 1️⃣ Schema (DDL)

-   Creation of staging tables
-   Creation of dimension tables
-   Creation of fact table

### 2️⃣ ETL

-   Loading dimension tables
-   Populating fact table with cleaned data

### 3️⃣ Marts & KPI Layer

-   Revenue KPIs
-   Monthly sales aggregates
-   Analytical views optimized for reporting

### 4️⃣ Ad-hoc Business Queries

-   Top selling products
-   Top customers by revenue
-   Monthly trends
-   Period-based summaries

Scripts are numbered to reflect execution order, ensuring
reproducibility.

------------------------------------------------------------------------

## 📈 Visualization Layer (R)

Visualizations were created using **ggplot2**, each script producing one
analytical chart:

-   Monthly sales trend
-   Monthly sales by product
-   Top 5 product trend analysis
-   Revenue concentration insights

Generated charts are stored as `.png` files.

------------------------------------------------------------------------

## 📊 Executive Presentation

The project includes a management-level PowerPoint file:

presentation/sales_performance_analysis.pptx

It translates technical findings into: - Business language - Clear
visual storytelling - Actionable insights

------------------------------------------------------------------------

## 🛠️ Tools & Technologies

-   SQL -- Data modeling, ETL, KPI logic
-   Dimensional Modeling (Star Schema)
-   R (ggplot2) -- Data visualization
-   Power Query (Excel) -- Data transformation example
-   PowerPoint -- Executive reporting

------------------------------------------------------------------------

## 💡 Key Competencies Demonstrated

-   Data warehouse design
-   Dimensional modeling
-   ETL pipeline structuring
-   Analytical SQL (aggregations, ranking, time analysis)
-   KPI development
-   Data storytelling
-   Business-oriented thinking
-   Clean repository organization (portfolio-ready)

------------------------------------------------------------------------

## 🚀 Why This Project Matters

This is not just a data analysis notebook.

It demonstrates the ability to:

-   Think like a BI developer
-   Structure analytics like in enterprise environments
-   Translate raw data into strategic insights
-   Deliver both technical and business outputs

The project reflects real-world responsibilities of: - Junior Data
Analyst - BI Developer - Analytics Engineer

------------------------------------------------------------------------

## 👤 Author

Created as part of a professional Data Analytics portfolio to
demonstrate practical, job-ready skills in:

-   SQL
-   Data modeling
-   Business analytics
-   Data visualization

If you are reviewing this repository as a recruiter or hiring manager:

This project shows not only query-writing skills, but the ability to
design structured analytical solutions from scratch.
