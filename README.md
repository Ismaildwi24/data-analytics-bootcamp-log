# 📊 Data Analytics & Quantitative Foundations: Proof of Work (PoW)

> **Learning in Public & Technical Execution Logbook**  
> *Environment:* Antigravity IDE | Python 3.11+ | PostgreSQL | Power BI | Microsoft Excel

---

## 🎯 Executive Overview & Purpose

Repositori ini berfungsi sebagai instrumen **Proof of Work (PoW)** dan dokumentasi terstruktur dari proses akselerasi kapabilitas analitik end-to-end melalui *Data Analyst Bootcamp*. 

Sebagai mahasiswa Informatika semester 5 dengan spesialisasi Sains Data, tujuan utama repositori ini adalah:
1. **Menjembatani Rigor Akademis & Standar Industri:** Mentransformasikan fondasi teoritis (aljabar linier, kalkulus, struktur data, dan probabilitas/statistika) ke dalam metodologi industri seperti *financial modeling*, *method-chained data transformation*, dan *dimensional modeling*.
2. **Reproducibility & Code Hygiene:** Menjaga standar rekayasa perangkat lunak (version control, clean query formatting, modularisasi Python, serta penanganan data defensif) dalam setiap analisis data.
3. **Persiapan Portofolio Magang (Quant Finance & Data Analytics):** Membangun portofolio berbasis proyek nyata yang menunjukkan pemikiran analitis berbasis hipotesis (*hypothesis-driven analytics*), efisiensi komputasi, dan pemahaman dinamika pasar keuangan.

---

## 🛠️ Technology Stack & Tooling

| Domain | Tool / Framework | Penggunaan Spesifik & Pendekatan |
| :--- | :--- | :--- |
| **Relational Database** | PostgreSQL, DuckDB, SQLite | Advanced Window Functions, CTEs, Query Execution Plans (`EXPLAIN ANALYZE`), Indexing Strategy. |
| **Financial Modeling** | Microsoft Excel / Modern Spreadsheet | Dynamic Arrays, `XLOOKUP`, `INDEX/MATCH`, Two-way Data Tables, Scenario Manager, Power Query (M Language). |
| **Business Intelligence** | Microsoft Power BI, DAX | Dimensional Modeling (Kimball Star Schema), Time-Intelligence Measures, Context Transition (`CALCULATE`, `SUMX`). |
| **Data Engineering & Analysis** | Python (Pandas, NumPy, SciPy) | **Functional Data Processing & Method Chaining** (`.pipe()`, `.assign()`), Vectorized Computation, Time Series Analysis. |
| **Visualization** | Seaborn, Matplotlib, Plotly | Distribution plots, Correlation Heatmaps, Financial Drawdown Charts, Interactive Timeseries. |
| **Development Workflow** | Antigravity IDE, Git/GitHub, PowerShell | Modular directory design, strict `.gitignore` rules, and reproducible environment management. |

---

## 📂 Repository Directory Tree

```text
data-analytics-bootcamp-log/
├── .gitignore                      # Proteksi dataset mentah, virtualenv, dan binary files
├── README.md                       # Dokumentasi utama dan master logbook
├── 01_SQL/                         # Analisis kueri relasional & optimasi
│   ├── README.md                   # Spesifikasi kurikulum dan standar kueri SQL
│   ├── queries/                    # Latihan konsep atomik (CTEs, Windowing, Aggregation)
│   └── case_studies/               # Analisis transaksi keuangan dan kohort
├── 02_Excel/                       # Pemodelan keuangan & otomasi spreadsheet
│   ├── README.md                   # Fokus pemodelan dinamis & analisis sensitivitas
│   ├── models/                     # Template DCF, scenario model, & simulasi Monte Carlo
│   └── templates/                  # Lembar kerja kalkulasi finansial
├── 03_PowerBI/                     # Visualisasi interaktif & pemodelan semantik
│   ├── README.md                   # Prinsip Star Schema dan optimasi DAX
│   ├── pbix_models/                # File laporan Power BI (.pbix / .pbip)
│   └── dax_snippets/               # Formula DAX reusable (KPI, MoM, YoY, Run Rates)
├── 04_Python/                      # Analisis fungsional & komputasi saintifik
│   ├── README.md                   # Metodologi Pandas Method Chaining & Time Series
│   ├── notebooks/                  # Jupyter notebooks untuk EDA dan eksperimentasi
│   └── src/                        # Modul Python modular (.py) dan fungsi reusable
└── 05_CapstoneProject/             # Proyek komprehensif end-to-end
    ├── README.md                   # Executive brief, metodologi, dan temuan bisnis
    ├── data/                       # Penyimpanan lokal data (diabaikan oleh git)
    ├── notebooks/                  # Notebook analitik dan pemodelan
    ├── src/                        # Pipeline ETL dan kalkulasi metrik
    └── reports/                    # Ringkasan eksekutif, presentasi PDF, dan visual utama
```

---

## 📖 Daily Learning Logbook (Jurnal Pembelajaran Terstruktur)

Tabel di bawah ini merekam proses *Learning in Public* secara konsisten, mencakup tantangan teknis yang dihadapi serta solusi mitigasinya.

| Tanggal | Modul / Fokus Topik | Konsep Kunci yang Dikuasai | Tantangan / Error Ditemui & Solusi Implementasi |
| :---: | :--- | :--- | :--- |
| `2026-11-02` | **01_SQL** - Advanced Window Functions | `DENSE_RANK()`, `LEAD()`, `LAG()`, Frame Clauses (`ROWS BETWEEN PRECEDING AND CURRENT ROW`) | **Tantangan:** Perhitungan moving average 30-hari menghasilkan hasil bias pada hari libur bursa.<br>**Solusi:** Mengubah window frame dari `ROWS` fisik ke `RANGE BETWEEN INTERVAL '30 DAYS' PRECEDING`. |
| `2026-11-03` | **04_Python** - Functional Pandas | Method Chaining menggunakan `.assign()`, `.pipe()`, dan operasi vektorisasi tanpa `apply()` | **Tantangan:** Mutasi *in-place* menyebabkan side-effects saat menghitung log return aset portofolio.<br>**Solusi:** Membangun pipeline murni fungsional (`df.pipe(clean_data).pipe(calculate_returns)`) dengan immutability pattern. |
| `2026-11-04` | **02_Excel** - Financial Sensitivity Analysis | Two-Way Data Tables, Dynamic Array Formulas (`FILTER`, `SORT`, `UNIQUE`), Scenario Manager | **Tantangan:** Data Table berukuran besar memperlambat kalkulasi workbook secara signifikan.<br>**Solusi:** Mengubah *Calculation Options* menjadi *Automatic except for Data Tables* dan mengoptimalkan formula referensi array. |
| `2026-11-05` | **03_PowerBI** - DAX Context Transition | Row Context vs Filter Context, Evaluasi `CALCULATE()`, Time Intelligence (`DATEADD`, `SAMEPERIODLASTYEAR`) | **Tantangan:** Filter context tertimpa secara tidak sengaja ketika menghitung Cumulative Asset Value.<br>**Solusi:** Memanfaatkan `KEEPFILTERS()` di dalam argumen filter `CALCULATE()` untuk mempertahankan konteks filter dimensional. |
| *YYYY-MM-DD* | *[Modul - Topik]* | *[Tuliskan 2-3 konsep teknis utama]* | *[Deskripsikan akar masalah dan perbaikan teknis]* |

---

## 🔬 Core Competencies & Methodology

### 1. Functional Data Pipeline (Python & Pandas)
Dalam analisis kuantitatif, kode imperatif yang mengandalkan iterasi `for-loop` atau mutasi state tidak efisien dan rentan bug. Repositori ini menerapkan paradigma fungsional:
```python
# Standar implementasi Method Chaining pada repositori ini:
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
Fokus kueri tidak hanya berhenti pada `SELECT-FROM-WHERE`, melainkan:
- Pemodelan analitik data warehouse (Fact & Dimension Tables).
- Penggunaan recursive CTEs untuk hierarchical data.
- Analisis execution plan menggunakan indexing B-Tree vs Hash index untuk kueri volumetrik tinggi.

### 3. Business Intelligence & Decision-Grade Dashboards
- Arsitektur model data 100% Star Schema (menghindari flattened single-table anti-patterns).
- Pembuatan ukuran DAX terukur (*explicit measures*) dengan dokumentasi logika bisnis yang jelas.

---

## 🚀 Setup & Reproducibility

Untuk mereplikasi lingkungan analisis pada mesin lokal Anda:

```bash
# 1. Clone repositori
git clone https://github.com/Ismaildwi24/data-analytics-bootcamp-log.git
cd data-analytics-bootcamp-log

# 2. Buat dan aktifkan virtual environment (Python)
python -m venv .venv
# Windows (PowerShell):
.venv\Scripts\Activate.ps1
# Unix / macOS:
source .venv/bin/activate

# 3. Pasang dependensi analisis data
pip install --upgrade pip
pip install pandas numpy scipy matplotlib seaborn plotly jupyter duckdb
```

---

## 📬 Contact & Portfolio Links
- **LinkedIn:** [linkedin.com/in/yourprofile](https://linkedin.com)
- **GitHub:** [github.com/Ismaildwi24](https://github.com/Ismaildwi24)
- **Email:** ismaildwimuh.anugerah@gmail.com

