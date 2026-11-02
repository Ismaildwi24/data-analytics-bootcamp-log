# 📊 Data Analytics & Quantitative Foundations: Proof of Work (PoW)

> **Learning in Public & Technical Execution Logbook**  
> *Environment:* Antigravity IDE | Python 3.11+ | PostgreSQL | Power BI | Microsoft Excel

---

## 🎯 Executive Overview & Purpose

This repository serves as a **Proof of Work (PoW)** instrument and a structured documentation framework for an intensive acceleration of end-to-end analytical capabilities through an exhaustive *Data Analyst Bootcamp*.

As a 5th-semester Computer Science undergraduate specializing in Data Science, this repository is architected around three foundational pillars:
1. **Bridging Academic Rigor & Industry Standards:** Translating core theoretical foundations (linear algebra, calculus, data structures, probability, and mathematical statistics) into production-grade industry workflows, including *financial sensitivity modeling*, *method-chained data transformations*, and *dimensional data modeling*.
2. **Reproducibility & Engineering Hygiene:** Upholding software engineering best practices (version control, clean query formatting, modular Python pipelines, and defensive data processing) across every analytical layer.
3. **Internship Portfolio Positioning (Quant Finance & High-Impact Analytics):** Cultivating a project-backed portfolio demonstrating hypothesis-driven analytical thinking, computational efficiency, and deep financial market intuition.

---

## 🛠️ Technology Stack & Tooling

| Domain | Tool / Framework | Specific Use Case & Analytical Approach |
| :--- | :--- | :--- |
| **Relational Database** | PostgreSQL, DuckDB, SQLite | Advanced Window Functions, CTEs, Query Execution Plans (`EXPLAIN ANALYZE`), Indexing Strategies (B-Tree, BRIN). |
| **Financial Modeling** | Microsoft Excel / Modern Spreadsheets | Dynamic Arrays, `XLOOKUP`, `INDEX/MATCH`, Two-Way Data Tables, Scenario Manager, Power Query (M Language ETL). |
| **Business Intelligence** | Microsoft Power BI, DAX | Dimensional Modeling (Kimball Star Schema), Time-Intelligence Measures, Context Transition (`CALCULATE`, `SUMX`). |
| **Data Engineering & Analysis** | Python (Pandas, NumPy, SciPy) | **Functional Data Processing & Method Chaining** (`.pipe()`, `.assign()`), Vectorized Computations, Financial Time-Series Analysis. |
| **Visualization** | Seaborn, Matplotlib, Plotly | Distribution Analysis, Correlation Matrices, Financial Drawdown Charts, Interactive Time-Series Displays. |
| **Development Workflow** | Antigravity IDE, Git/GitHub, PowerShell | Modular directory architecture, strict `.gitignore` safeguards, and reproducible environment management. |

---

## 📂 Repository Directory Tree

```text
data-analytics-bootcamp-log/
├── .gitignore                      # Safeguards raw data, virtual environments, and binary files
├── README.md                       # Master documentation and executive daily logbook
├── 01_SQL/                         # Relational query analysis & performance optimization
│   ├── README.md                   # Module specifications and SQL style guidelines
│   ├── queries/                    # Atomic concept drills (CTEs, Windowing, Aggregations)
│   └── case_studies/               # Transactional analytics and cohort retention studies
├── 02_Excel/                       # Financial modeling & spreadsheet automation
│   ├── README.md                   # Dynamic modeling focus & sensitivity analysis
│   ├── models/                     # DCF valuation models, scenario managers, & simulations
│   └── templates/                  # Standardized financial calculation worksheets
├── 03_PowerBI/                     # Interactive visualization & semantic data modeling
│   ├── README.md                   # Kimball Star Schema principles and DAX optimization
│   ├── pbix_models/                # Power BI project files (.pbip / .pbix metadata)
│   └── dax_snippets/               # Modular DAX measures (KPIs, MoM, YoY, Run Rates)
├── 04_Python/                      # Functional data analysis & scientific computing
│   ├── README.md                   # Pandas Method Chaining standards & Time-Series metrics
│   ├── notebooks/                  # Jupyter notebooks for exploratory data analysis (EDA)
│   └── src/                        # Modular, production-ready Python modules (.py)
└── 05_CapstoneProject/             # Comprehensive end-to-end analytical project
    ├── README.md                   # Executive brief, methodology, and key business findings
    ├── data/                       # Local data storage (raw and processed, git-ignored)
    │   ├── raw/
    │   └── processed/
    ├── notebooks/                  # Analytical, modeling, and feature engineering notebooks
    ├── src/                        # Automated ETL pipelines and quantitative calculation engines
    └── reports/                    # Executive summaries, slide decks, and visual assets
```

---

## 📖 Daily Learning Logbook

This logbook records the continuous *Learning in Public* trajectory, highlighting key technical concepts mastered as well as encountered roadblocks and their engineered solutions.

| Date | Module / Topic Focus | Key Concepts Mastered | Technical Challenges Encountered & Implemented Solutions |
| :---: | :--- | :--- | :--- |
| `2026-11-02` | **01_SQL** - Advanced Window Functions | `DENSE_RANK()`, `LEAD()`, `LAG()`, Frame Clauses (`ROWS BETWEEN PRECEDING AND CURRENT ROW`) | **Roadblock:** A 30-day moving average calculation produced biased results over trading holidays and weekends.<br>**Solution:** Migrated the window frame definition from physical `ROWS` to dynamic `RANGE BETWEEN INTERVAL '30 DAYS' PRECEDING`. |
| `2026-11-03` | **04_Python** - Functional Pandas | Method Chaining utilizing `.assign()`, `.pipe()`, and vectorized operations avoiding iterative loops | **Roadblock:** In-place mutations caused unintended state side-effects when computing portfolio asset log returns.<br>**Solution:** Architected a purely functional transformation pipeline (`df.pipe(clean_data).pipe(calculate_returns)`) enforcing immutability. |
| `2026-11-04` | **02_Excel** - Financial Sensitivity Analysis | Two-Way Data Tables, Dynamic Array Formulas (`FILTER`, `SORT`, `UNIQUE`), Scenario Manager | **Roadblock:** Large multi-dimensional Data Tables significantly degraded workbook recalculation performance.<br>**Solution:** Configured Excel *Calculation Options* to *Automatic except for Data Tables* and optimized dynamic array reference ranges. |
| `2026-11-05` | **03_PowerBI** - DAX Context Transition | Row Context vs Filter Context, `CALCULATE()` Evaluation, Time Intelligence (`DATEADD`, `SAMEPERIODLASTYEAR`) | **Roadblock:** Existing dimensional filter contexts were inadvertently overwritten during Cumulative Asset Value calculations.<br>**Solution:** Deployed `KEEPFILTERS()` within `CALCULATE()` filter arguments to preserve incoming dimensional context. |
| *YYYY-MM-DD* | *[Module - Topic]* | *[Summarize 2-3 core technical concepts]* | *[Describe the root cause and implemented technical fix]* |

---

## 🔬 Core Competencies & Analytical Methodology

### 1. Functional Data Pipelines (Python & Pandas)
In quantitative analytics, imperative code that relies on mutable states or iterative `for-loops` introduces latency and regression risks. This repository enforces a declarative, functional methodology:
```python
# Standard Method Chaining implementation adopted in this repository:
clean_equity_df = (
    raw_df
    .rename(columns=str.lower)
    .assign(date=lambda df_: pd.to_datetime(df_['date']))
    .set_index('date')
    .sort_index()
    .assign(
        daily_return=lambda df_: df_['adj_close'].pct_change(),
        rolling_vol_30d=lambda df_: df_['daily_return'].rolling(30).std() * np.sqrt(252)
    )
    .dropna()
)
```

### 2. Analytical SQL & Data Engineering
Query construction extends beyond standard querying into production-grade data modeling:
- Analytical Data Warehouse schema design (Fact and Dimension table segregation).
- Recursive CTEs for hierarchical structures and trading calendar synthesis.
- Execution plan inspection (`EXPLAIN ANALYZE`) comparing B-Tree vs. BRIN indexing across high-volume time-series datasets.

### 3. Business Intelligence & Decision-Grade Dashboards
- Strict adherence to 100% Kimball Star Schema architectures (eliminating flattened, single-table anti-patterns).
- Development of explicit, documented DAX measures reflecting nuanced financial business logic.

---

## 🚀 Setup & Reproducibility

To replicate the analytical environment on your local workstation:

```bash
# 1. Clone the repository
git clone https://github.com/Ismaildwi24/data-analytics-bootcamp-log.git
cd data-analytics-bootcamp-log

# 2. Initialize and activate Python virtual environment
python -m venv .venv
# Windows (PowerShell):
.venv\Scripts\Activate.ps1
# Unix / macOS:
source .venv/bin/activate

# 3. Install core analytical dependencies
pip install --upgrade pip
pip install pandas numpy scipy matplotlib seaborn plotly jupyter duckdb
```

---

## 📬 Contact & Portfolio Links
- **GitHub:** [github.com/Ismaildwi24](https://github.com/Ismaildwi24)
- **Email:** ismaildwimuh.anugerah@gmail.com
