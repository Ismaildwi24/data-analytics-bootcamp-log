# 📊 Module 03: Business Intelligence & Power BI / DAX

This module emphasizes semantic data modeling, executive dashboard design, and the mastery of **Data Analysis Expressions (DAX)** to deliver actionable, real-time insights for portfolio performance and operational analytics.

---

## 🎯 Competency Focus & Learning Objectives

1. **Dimensional Data Modeling (Kimball Methodology):**
   - Pure **Star Schema** architecture (strict separation between Fact tables and Dimension tables).
   - Relationship integrity with 1-to-many cardinality and single-direction cross-filtering to prevent ambiguous filter paths.
   - Dedicated Date Dimension table integrating fiscal calendars and active exchange trading days.
2. **DAX Mastery & Context Evaluation:**
   - Deep structural comprehension of **Row Context** versus **Filter Context**.
   - Context Transition mechanics governed by `CALCULATE()`.
   - Strategic deployment of iterator functions (`SUMX`, `AVERAGEX`, `RANKX`) to optimize memory and query performance.
   - Comprehensive Time Intelligence: Year-to-Date (`TOTALYTD`), Same Period Last Year (`SAMEPERIODLASTYEAR`), and Compound Annual Growth Rate (CAGR).
3. **Executive-Ready Visualization Standards:**
   - Information hierarchy design: Executive Summary -> Drill-down Exploration -> Granular Transaction Views.
   - Dynamic Field Parameters and Bookmark navigation for compact, high-utility dashboard real estate.
4. **Git Version Control via Power BI Project (`.pbip`):**
   - Adoption of modern PBIP (Power BI Project) format, storing report visuals and model metadata in human-readable JSON/TMDL formats for Git tracking.

---

## 📂 Module Architecture

```text
03_PowerBI/
├── README.md                   # Module documentation (this file)
├── pbix_models/                # Power BI project definitions (.pbip / model specs)
│   └── portfolio_risk_monitor/ # PBIP folder (TMDL / Report metadata)
└── dax_snippets/               # Modular, production-tested DAX scripts
    ├── 01_time_intelligence.dax
    ├── 02_financial_performance_metrics.dax
    └── 03_dynamic_ranking_and_segmentation.dax
```

---

## 📐 DAX Formula Formatting Standards

Every explicit measure adheres to standardized DAX formatting and variable scoping:

```dax
Portfolio Cumulative Return = 
VAR InitialNav = 
    CALCULATE(
        MIN(Fact_PortfolioValuation[NavPerUnit]),
        ALLSELECTED(Dim_Date)
    )
VAR CurrentNav = 
    [Current NAV Measure]
RETURN
    DIVIDE(CurrentNav - InitialNav, InitialNav, BLANK())
```
