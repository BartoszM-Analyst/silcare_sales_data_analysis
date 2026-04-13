# Silcare B2B Sales Analysis — Revenue Intelligence & KPI Dashboard

> **Cosmetics distributor. 12 months of B2B transactional data. The goal: identify where revenue is actually coming from — and where it's at risk.**

![SQL](https://img.shields.io/badge/SQL-T--SQL-blue?style=flat-square&logo=microsoftsqlserver)
![R](https://img.shields.io/badge/R-ggplot2-276DC3?style=flat-square&logo=r)
![Excel](https://img.shields.io/badge/Excel-Power_Query-217346?style=flat-square&logo=microsoftexcel)
![Architecture](https://img.shields.io/badge/Architecture-Star_Schema-orange?style=flat-square)

---

## The Business Problem

Silcare's sales data lived in raw transactional files — no structure, no KPIs, no way to answer the questions that actually matter to management:

- Which products drive the most revenue, and is that trend growing or shrinking?
- How concentrated is revenue across customers? (i.e. — are we dangerously dependent on a few accounts?)
- Which months consistently underperform, and why?

**Without a structured data model, answering any of these questions meant manual Excel work every time.**

---

## What I Built

An end-to-end analytics layer: raw CSV files → cleaned, modeled, and query-ready data warehouse → business insights.

```
Raw CSV  →  Staging  →  Star Schema (SQL)  →  KPI Views  →  R Visualizations  →  Executive Report
```

The warehouse uses a **Star Schema** (`fact_sales` + `dim_product`, `dim_customer`, `dim_date`), which means any BI tool can connect directly and queries run fast — even as data grows.

---

## Key Findings

### 💰 Revenue Concentration Risk
The **top 3 customers account for a disproportionate share of total revenue**.  
This is a classic B2B risk pattern — if one key account churns, it directly impacts the bottom line.  
*Recommendation: prioritise retention strategies for tier-1 accounts and actively develop mid-tier clients.*

### 📈 Seasonal Peaks Are Predictable
Revenue follows a clear seasonal pattern with strong Q4 performance and a consistent soft patch mid-year.  
*This can be used to plan inventory, staffing, and promotional spend more accurately.*

### 🏆 Product Concentration in Top 5 SKUs
A small number of SKUs generate the majority of product revenue.  
Monthly trend analysis shows which of these are growing vs. plateauing — critical input for assortment decisions.

### 📉 Flat Months Aren't Random
Low-revenue months cluster consistently — suggesting structural causes (order cycle timing, client behaviour) rather than noise.

---

## Repository Structure

```
silcare_sales_data_analysis/
│
├── data/
│   ├── raw/                  # Source transactional data
│   └── processed/            # Cleaned, transformation-ready data
│
├── sql/
│   ├── schema/               # DDL: staging, dimensions, fact table
│   ├── etl/                  # Load scripts (numbered for execution order)
│   ├── marts/                # KPI views and reporting aggregates
│   └── ad_hoc/               # Business queries: top products, top customers, trends
│
├── r_visualizations/         # ggplot2 charts: trends, concentration, top SKUs
├── power_query_excel/        # Power Query transformation example
├── presentation/             # Executive-facing PowerPoint summary
└── docs/                     # Architecture diagrams
```

---

## Tech Stack

| Layer | Tool |
|---|---|
| Data modeling | T-SQL (Star Schema) |
| ETL logic | T-SQL stored procedures |
| KPI layer | SQL analytical views |
| Visualisation | R (ggplot2) |
| Data prep | Power Query (Excel) |
| Reporting | PowerPoint executive deck |

---

## SQL Highlights

The analysis layer includes:
- **Revenue KPIs** — total, MoM growth, rolling averages
- **Customer ranking** — revenue concentration, Pareto analysis
- **Product trends** — monthly breakdown by SKU, top-N analysis
- **Period comparisons** — YoY and QoQ aggregations

All scripts are numbered for reproducibility. The warehouse design is BI-tool agnostic — Power BI or Tableau can connect directly to the KPI views.

---

## Analytical Charts (R / ggplot2)

| Chart | Business Question Answered |
|---|---|
| Monthly revenue trend | Is the business growing? Are there seasonal patterns? |
| Revenue by product (monthly) | Which SKUs drive volume each month? |
| Top 5 product trends | Are best-sellers growing or declining? |
| Customer revenue concentration | How exposed are we to key account churn? |

---

## Skills Demonstrated

`Data Warehouse Design` · `Dimensional Modelling` · `ETL Pipelines` · `Analytical SQL` · `KPI Development` · `R / ggplot2` · `Business Storytelling` · `Executive Reporting`

---

*Analysis by Bartosz Majka · [LinkedIn](https://www.linkedin.com/in/bartosz-majka-a8088a35a/)*
