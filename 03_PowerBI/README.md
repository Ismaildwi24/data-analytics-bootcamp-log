# 📊 Modul 03: Business Intelligence & Power BI / DAX

Modul ini berfokus pada arsitektur data semantik (*semantic data modeling*), visualisasi data strategis, dan penguasaan formula **Data Analysis Expressions (DAX)** tingkat lanjut untuk pengambilan keputusan manajerial dan analitik performa portofolio.

---

## 🎯 Fokus Kompetensi & Target Pembelajaran

1. **Dimensional Data Modeling (Kimball Methodology):**
   - Implementasi arsitektur **Star Schema** murni (memisahkan tabel fakta (*Fact Tables*) dan tabel dimensi (*Dimension Tables*)).
   - Penataan hubungan (*relationships*) dengan kardinalitas 1-to-many dan arah filter satu arah (*single cross-filter direction*) guna mencegah ambiguitas data.
   - Pembuatan tabel kalender khusus (*Dedicated Date Table*) dengan atribut kalender fiskal dan hari bursa.
2. **Penguasaan DAX & Evaluasi Konteks:**
   - Memahami perbedaan mendasar antara **Row Context** dan **Filter Context**.
   - Mekanisme **Context Transition** menggunakan `CALCULATE()`.
   - Menggunakan iterator functions (`SUMX`, `AVERAGEX`, `RANKX`) secara selektif untuk menjaga performa rendering.
   - Fungsi *Time Intelligence*: Year-to-Date (`TOTALYTD`), Same Period Last Year (`SAMEPERIODLASTYEAR`), dan Compound Annual Growth Rate (CAGR).
3. **Penyajian Visual Berstandar Eksekutif:**
   - Desain dashboard berbasis hierarki informasi (Executive Summary -> Drill-down Analysis -> Granular Details).
   - Penggunaan Dynamic Field Parameters dan Bookmark Navigation untuk efisiensi ruang dasbor.
4. **Git Version Control dengan Power BI Project (`.pbip`):**
   - Memanfaatkan format modern PBIP (Power BI Project) untuk memecah metadata laporan ke dalam file JSON/TMDL teks, sehingga memudahkan kolaborasi dan version tracking via Git.

---

## 📂 Struktur Modul

```text
03_PowerBI/
├── README.md                   # Dokumen panduan modul (file ini)
├── pbix_models/                # File project Power BI (.pbip / catatan arsitektur)
│   └── portfolio_risk_monitor/ # Folder PBIP (TMDL / Report metadata)
└── dax_snippets/               # Skrip DAX modular dan teruji
    ├── 01_time_intelligence.dax
    ├── 02_financial_performance_metrics.dax
    └── 03_dynamic_ranking_and_segmentation.dax
```

---

## 📐 Standar Penulisan Formula DAX

Setiap metrik eksplisit wajib diformat menggunakan standar indentasi DAX:

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

