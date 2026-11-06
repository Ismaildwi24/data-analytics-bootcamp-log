# 🏛️ Module 01: Advanced SQL for Analytics & Quantitative Finance

Welcome to the **Advanced Analytical SQL** module. This repository section is dedicated to enterprise-grade query formulation, high-throughput relational data manipulation, and resolving complex analytical problems directly within the database engine to preserve downstream compute resources.

---

## 🎯 Competency Focus & Learning Objectives

1. **Window & Analytical Functions:**
   - Ranking: `ROW_NUMBER()`, `RANK()`, `DENSE_RANK()`, `NTILE()`.
   - Value & Offset: `LEAD()`, `LAG()`, `FIRST_VALUE()`, `LAST_VALUE()`.
   - Window Framing: Precision framing using `ROWS BETWEEN` vs. `RANGE BETWEEN` across financial time-series data.
2. **Modular Query Design:**
   - Leveraging Common Table Expressions (CTEs) to decompose complex business logic into readable, decoupled pipelines.
   - Recursive CTEs for hierarchical structures and synthetic trading calendar generation.
3. **Query Optimization & Execution Plans:**
   - Reading and interpreting database query plans via `EXPLAIN ANALYZE`.
   - Indexing strategies (B-Tree, BRIN for chronological append-only datasets) and partition pruning.
4. **Financial & Transactional Case Studies:**
   - Computing *Running Balances*, *Daily Traded Volumes*, *Customer Lifetime Value (CLV)*, and *Rolling Risk Metrics*.

---

## 📂 Module Architecture

```text
01_SQL/
├── README.md                   # Module documentation and standards (this file)
├── queries/                    # Atomic concept exercises and drills
│   ├── 01_window_functions.sql
│   ├── 02_advanced_ctes.sql
│   └── 03_query_optimization.sql
└── case_studies/               # Real-world business cases and practice problem briefs
    └── case_study_01_job_postings.md
```

---

## 💡 Query Style Guide & Standards

- **Keywords:** Always uppercase reserved SQL keywords (`SELECT`, `FROM`, `WHERE`, `GROUP BY`, `OVER`, `PARTITION BY`).
- **Naming Conventions:** Enforce strict `snake_case` across table names, column names, and CTE aliases.
- **Readability:** Every calculated or windowed column must feature an explicit alias (`AS <column_name>`) alongside clean, standardized indentation.
