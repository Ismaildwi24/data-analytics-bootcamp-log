# 🐍 Modul 04: Functional Python & Quantitative Data Processing

Modul ini berfokus pada **rekayasa data analitik modern dengan Python**, dengan penekanan khusus pada paradigma fungsional, manipulasi data berbasis *method chaining* menggunakan **Pandas**, komputasi numerik dengan **NumPy & SciPy**, serta analisis deret waktu (*time series analysis*).

---

## 🎯 Fokus Kompetensi & Target Pembelajaran

1. **Idiomatic Pandas & Method Chaining:**
   - Menghindari kode imperatif (mutasi *in-place*, `df['col'] = ...` berulang-ulang, atau `for-loop` lambat).
   - Mengadopsi alur fungsional deklaratif menggunakan:
     - `.assign()`: Pembuatan kolom turunan fungsional dengan fungsi `lambda`.
     - `.pipe()`: Integrasi fungsi modular kustom ke dalam pipeline transformasi.
     - `.query()`: Pemfilteran data deklaratif dan terbaca (*human-readable filtering*).
2. **Quantitative Time-Series Analysis:**
   - Penanganan indeks temporal (`DatetimeIndex`), zona waktu, dan frekuensi perdagangan (*business day resampling*).
   - Perhitungan metrik kuantitatif: *Logarithmic vs. Simple Returns*, *Rolling Volatility (Annualized)*, *Exponential Moving Average (EMA)*, *Drawdown*, dan *Value at Risk (VaR)* historis.
3. **Statistical Inference & Hypothesis Testing:**
   - Uji normalitas (Shapiro-Wilk, Jarque-Bera) pada distribusi return harga aset.
   - Analisis korelasi dan regresi linear multivariat untuk mengestimasi koefisien Beta portofolio.
4. **Pemisahan Eksperimentasi dan Produksi:**
   - Menggunakan folder `notebooks/` murni untuk eksplorasi dan visualisasi awal.
   - Merefaktor fungsi-fungsi analitik yang telah stabil ke dalam modul Python murni di folder `src/` agar dapat diuji (*unit tested*) dan digunakan kembali (*reusable*).

---

## 📂 Struktur Modul

```text
04_Python/
├── README.md                   # Dokumen panduan modul (file ini)
├── notebooks/                  # Jupyter notebooks untuk analisis eksploratif (EDA)
│   ├── 01_functional_pandas_pipeline.ipynb
│   ├── 02_financial_timeseries_analysis.ipynb
│   └── 03_risk_metrics_and_volatility.ipynb
└── src/                        # Modul Python fungsional (.py)
    ├── __init__.py
    ├── data_cleaning.py        # Fungsi pembersihan data pipeline (.pipe())
    └── quant_metrics.py        # Perhitungan Sharpe ratio, drawdown, returns
```

---

## ⚡ Filosofi Kode: Functional Data Pipeline Blueprint

Berikut adalah standar penulisan pipeline data fungsional yang diadopsi di seluruh modul ini:

```python
import numpy as np
import pandas as pd


def remove_outliers(df: pd.DataFrame, column: str, z_thresh: float = 3.0) -> pd.DataFrame:
  """Membersihkan data pencilan berdasarkan z-score secara fungsional."""
  z_scores = np.abs((df[column] - df[column].mean()) / df[column].std())
  return df[z_scores < z_thresh]


def calculate_quant_factors(df: pd.DataFrame) -> pd.DataFrame:
  """Menghitung faktor kuantitatif return dan volatilitas bergulir."""
  return df.assign(
      log_return=lambda d: np.log(d['adj_close'] / d['adj_close'].shift(1)),
      rolling_vol_21d=lambda d: d['log_return'].rolling(21).std() * np.sqrt(252),
      cumulative_return=lambda d: np.exp(d['log_return'].cumsum()) - 1,
  )


# Pipeline eksekusi fungsional:
processed_df = (
    pd.read_csv('data/market_raw.csv')
    .pipe(clean_column_names)
    .pipe(remove_outliers, column='volume')
    .pipe(calculate_quant_factors)
    .dropna()
)
```

