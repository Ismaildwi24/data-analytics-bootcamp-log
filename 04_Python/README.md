# 🐍 Module 04: Functional Python & Quantitative Data Processing

This module centers on **modern analytical data engineering using Python**, with primary focus on functional programming paradigms, method-chained data transformations in **Pandas**, high-performance vectorized operations in **NumPy & SciPy**, and financial time-series modeling.

---

## 🎯 Competency Focus & Learning Objectives

1. **Idiomatic Pandas & Method Chaining:**
   - Eradicating imperative anti-patterns (in-place mutations, repetitive `df['col'] = ...` assignments, and slow explicit `for-loops`).
   - Adopting declarative, functional data transformation pipelines:
     - `.assign()`: Functional generation of derived columns using scoped `lambda` expressions.
     - `.pipe()`: Composable pipeline integration for custom analytical transformations.
     - `.query()`: Human-readable, declarative filtering syntax.
2. **Quantitative Time-Series Analysis:**
   - Robust temporal indexing (`DatetimeIndex`), market holiday adjustments, and business-day frequency resampling.
   - Core financial engineering calculations: *Logarithmic vs. Simple Returns*, *Rolling Annualized Volatility*, *Exponential Moving Averages (EMA)*, *Drawdown Dynamics*, and Historical *Value-at-Risk (VaR)*.
3. **Statistical Inference & Hypothesis Testing:**
   - Normality testing (Shapiro-Wilk, Jarque-Bera) across asset return distributions.
   - Multivariate regression and correlation analysis to quantify asset factor loadings and portfolio Beta.
4. **Decoupling Exploration from Production Code:**
   - Restricting `notebooks/` strictly to exploratory data analysis (EDA) and experimental visualization.
   - Refactoring battle-tested analytical functions into modular, importable Python packages in `src/` to support unit testing and pipeline integration.

---

## 📂 Module Architecture

```text
04_Python/
├── README.md                   # Module documentation (this file)
├── notebooks/                  # Jupyter notebooks for exploratory data analysis (EDA)
│   ├── 01_functional_pandas_pipeline.ipynb
│   ├── 02_financial_timeseries_analysis.ipynb
│   └── 03_risk_metrics_and_volatility.ipynb
└── src/                        # Modular Python source packages (.py)
    ├── __init__.py
    ├── data_cleaning.py        # Functional data sanitization pipelines (.pipe())
    └── quant_metrics.py        # Quantitative engines (Sharpe ratio, drawdown, returns)
```

---

## ⚡ Code Philosophy: Functional Data Pipeline Blueprint

Below is the standard functional pipeline blueprint enforced across all analysis in this module:

```python
import numpy as np
import pandas as pd


def remove_outliers(df: pd.DataFrame, column: str, z_thresh: float = 3.0) -> pd.DataFrame:
  """Purges distribution outliers based on absolute z-score without mutating state."""
  z_scores = np.abs((df[column] - df[column].mean()) / df[column].std())
  return df[z_scores < z_thresh]


def calculate_quant_factors(df: pd.DataFrame) -> pd.DataFrame:
  """Derives essential quantitative factor metrics: log returns and annualized rolling volatility."""
  return df.assign(
      log_return=lambda d: np.log(d['adj_close'] / d['adj_close'].shift(1)),
      rolling_vol_21d=lambda d: d['log_return'].rolling(21).std() * np.sqrt(252),
      cumulative_return=lambda d: np.exp(d['log_return'].cumsum()) - 1,
  )


# Executable functional pipeline:
processed_df = (
    pd.read_csv('data/market_raw.csv')
    .pipe(clean_column_names)
    .pipe(remove_outliers, column='volume')
    .pipe(calculate_quant_factors)
    .dropna()
)
```
