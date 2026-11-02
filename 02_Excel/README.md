# 📈 Module 02: Advanced Excel & Financial Modeling

This module captures advanced mastery of **Modern Spreadsheets**, focused on institutional business scenario analysis, financial valuation modeling (*Discounted Cash Flow / DCF*), and automated, reproducible data cleansing using Power Query.

---

## 🎯 Competency Focus & Learning Objectives

1. **Modern Lookup & Dynamic Array Formulas:**
   - Transitioning from legacy formulas to dynamic arrays: `XLOOKUP`, `INDEX/MATCH`, `FILTER`, `UNIQUE`, `SORT`, `CHOOSECOLS`.
   - Formula modularization using `LET()` for sub-expression caching and custom formula authoring via `LAMBDA()`.
2. **Financial Modeling & Decision Support:**
   - Three-statement integration and Discounted Cash Flow (DCF) valuation engines.
   - Sensitivity Analysis: One-Way and Two-Way Data Tables to evaluate company valuation responsiveness against varying discount rates (*WACC*) and terminal growth rates.
   - Scenario Manager and Goal Seek for deterministic stress testing across base, bull, and bear market cases.
3. **Reproducible ETL via Power Query (M Language):**
   - Multi-source automated data ingestion.
   - Unpivoting, merging, and appending datasets into clean, normalized tabular schemas without manual intervention.

---

## 📂 Module Architecture

```text
02_Excel/
├── README.md                   # Module documentation (this file)
├── models/                     # Analytical and financial valuation models
│   ├── financial_sensitivity_model.xlsx.md  # Documentation of assumptions & outputs
│   └── dcf_valuation_engine.xlsx.md
└── templates/                  # Standardized, reusable calculation templates
    ├── kpi_variance_analysis_template.xlsx.md
    └── data_cleansing_powerquery.m
```

> **Data File Management Note:**  
> Large binary `.xlsx` files are excluded from Git commits via `.gitignore`. Each model is paired with a corresponding markdown specification file (`.xlsx.md`) documenting input assumptions, model architecture, and visual output summaries.
