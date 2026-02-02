# Architecture Overview

## 🏗️ High-Level Architecture
The project follows a **layered analytics architecture**, commonly used in Business Intelligence and Data Analytics teams. Each layer has a clearly defined responsibility, ensuring scalability, readability, and maintainability.

```text
Raw Data → Processed Data → Data Warehouse → Analytical Marts → Visualizations → Presentation
```

---

## 📂 Architecture Layers

### 1️⃣ Data Layer
**Location:** `data/`

- `raw/` – original source data, stored unchanged
- `processed/` – cleaned and transformed dataset ready for analysis

This separation guarantees data traceability and reproducibility.

---

### 2️⃣ Data Warehouse Layer (SQL)
**Location:** `sql/`

The SQL layer is organized into three sublayers:

#### 🔹 Schema (`sql/schema/`)
- Defines database structure
- Creates staging, dimension, and fact tables
- Uses clear execution order (00–02)

#### 🔹 ETL (`sql/etl/`)
- Loads processed data into dimension and fact tables
- Handles data transformations required for analytics

#### 🔹 Analytical Marts (`sql/marts/`)
- Business-ready views and KPIs
- Optimized for reporting and analysis
- Serves as a single source of truth for insights

---

### 3️⃣ Ad-hoc Analysis Layer
**Location:** `sql/ad_hoc/`

- Exploratory SQL queries
- Answers specific business questions
- Separated from official KPI logic to maintain clarity

---

### 4️⃣ Visualization Layer
**Location:** `r_visualizations/`

- R scripts dedicated exclusively to visualization
- One visualization per script
- Built using ggplot2 / GT Studio

This layer does not perform data transformation logic.

---

### 5️⃣ Presentation Layer
**Location:** `presentation/`

- Final PowerPoint presentation
- Summarizes insights for business stakeholders
- Focuses on trends, performance, and recommendations

---

## 🔄 Data Flow Summary

1. Raw data is ingested and stored unchanged
2. Data is cleaned and saved as processed datasets
3. SQL scripts create and populate the data warehouse
4. Analytical marts provide KPIs and reporting views
5. R scripts visualize insights
6. Results are presented to management

---

## ✅ Architectural Benefits
- Clear separation of concerns
- Scalable and maintainable structure
- Business-focused analytics layer
- Easy onboarding for new analysts

---

## 🎯 Design Philosophy
This architecture was designed to reflect **real-world analytics workflows**, emphasizing:
- clarity over complexity
- reproducibility
- business value over technical novelty

