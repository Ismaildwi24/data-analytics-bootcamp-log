# 📈 Modul 02: Advanced Excel & Financial Modeling

Modul ini mendokumentasikan penguasaan **Spreadsheet Modern** tingkat lanjut yang difokuskan pada analisis skenario bisnis, pemodelan keuangan (*financial modeling*), dan otomasi pembersihan data menggunakan Power Query.

---

## 🎯 Fokus Kompetensi & Target Pembelajaran

1. **Modern Lookup & Dynamic Array Formulas:**
   - Transisi dari formula legacy ke formula array dinamis: `XLOOKUP`, `INDEX/MATCH`, `FILTER`, `UNIQUE`, `SORT`, `CHOOSECOLS`.
   - Optimasi efisiensi formula menggunakan fungsi modular `LET()` dan pembuatan custom function menggunakan `LAMBDA()`.
2. **Financial Modeling & Decision Support:**
   - Pemodelan Arus Kas Terdiskon (*Discounted Cash Flow / DCF Model*).
   - Analisis Sensitivitas (*Sensitivity Analysis*): One-Way dan Two-Way Data Tables untuk memproyeksikan perubahan valuasi terhadap suku bunga (*WACC*) dan tingkat pertumbuhan (*Terminal Growth*).
   - *Scenario Manager* dan *Goal Seek* untuk stress testing skenario dasar, optimis, dan pesimis.
3. **Reproducible ETL via Power Query (M Language):**
   - Impor data otomatis dari berbagai sumber (*multi-source ingestion*).
   - Transformasi unpivot, merging, dan appending data tanpa sentuhan manual (reproducible workflow).

---

## 📂 Struktur Modul

```text
02_Excel/
├── README.md                   # Dokumen panduan modul (file ini)
├── models/                     # Model analitik dan keuangan
│   ├── financial_sensitivity_model.xlsx.md  # Dokumentasi parameter & output model
│   └── dcf_valuation_engine.xlsx.md
└── templates/                  # Template lembar kerja terstandardisasi
    ├── kpi_variance_analysis_template.xlsx.md
    └── data_cleansing_powerquery.m
```

> **Catatan Pengelolaan File:**  
> File `.xlsx` mentah berukuran besar tidak dimasukkan ke dalam commit Git (lihat `.gitignore`). Setiap model dilengkapi dengan file dokumentasi markdown (`.xlsx.md`) yang menjelaskan asumsi, arsitektur lembar kerja, dan ringkasan visual hasil analisis.

