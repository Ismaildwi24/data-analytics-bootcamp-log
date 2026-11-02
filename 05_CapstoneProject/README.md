# 🏆 Modul 05: Comprehensive Capstone Project

Folder ini merupakan kulminasi dari seluruh materi bootcamp, dirancang sebagai **Proyek Portofolio Utama (Flagship Portfolio Project)** yang mengintegrasikan SQL, Excel, Power BI, dan Python fungsional untuk memecahkan persoalan bisnis analitik atau keuangan kuantitatif nyata.

---

## 📌 Rekomendasi Topik Capstone (Sains Data & Quantitative Analytics)

Pilih salah satu tema bernilai tinggi yang relevan untuk target magang Anda:
1. **Multi-Asset Portfolio Risk & Return Attribution:** Analisis alokasi aset dinamis, evaluasi volatilitas, dan estimasi *Value-at-Risk (VaR)* serta *Maximum Drawdown*.
2. **Fintech Transaction Liquidity & Fraud Detection:** Analisis data transaksi dengan volume tinggi menggunakan SQL window functions, diikuti visualisasi profil risiko nasabah di Power BI.
3. **Credit Risk & Default Prediction Analytics:** Eksplorasi faktor risiko debitur, pemodelan probabilitas gagal bayar (*Probability of Default*), dan analisis sensitivitas portofolio pinjaman di Excel.

---

## 🏗️ Kerangka Dokumentasi Capstone

Setiap proyek akhir yang dimasukkan ke folder ini wajib mengikuti struktur pelaporan berikut:

### 1. Executive Summary
- **Latar Belakang:** Mengapa masalah ini penting secara finansial atau operasional?
- **Tujuan Analisis:** Pertanyaan analitis spesifik yang ingin dijawab.
- **Temuan Kunci (*Key Insights*):** Ringkasan 3 poin utama hasil temuan berbasis angka.

### 2. End-to-End Pipeline Architecture
```text
[Raw Multi-Source Data]
       │
       ▼
 [PostgreSQL / DuckDB]  ──> Agregasi awal, pembersihan transaksi, & window framing
       │
       ▼
 [Python (Functional)]  ──> Rekayasa fitur kuantitatif, analisis deret waktu, & statistik inferensial
       │
       ├──> [Excel Modeling] ──> Analisis sensitivitas WACC/Skenario & tabel parameter
       │
       ▼
 [Power BI Dashboard]   ──> Model Star Schema interaktif untuk pelaporan level eksekutif
```

### 3. Struktur Direktori Proyek

```text
05_CapstoneProject/
├── README.md                   # Dokumen utama laporan capstone (file ini)
├── data/
│   ├── .gitkeep                # Menjaga folder tetap di-track oleh git
│   ├── raw/                    # Data mentah lokal (diabaikan oleh .gitignore)
│   └── processed/              # Data hasil transformasi bersih
├── notebooks/                  # Notebook eksperimen analitik, EDA, dan visualisasi
│   ├── 01_data_extraction_and_cleaning.ipynb
│   ├── 02_quantitative_eda_and_metrics.ipynb
│   └── 03_statistical_modeling.ipynb
├── src/                        # Skrip modular python yang dapat dieksekusi ulang
│   ├── pipeline.py
│   └── metrics_engine.py
└── reports/                    # Hasil akhir untuk audiens non-teknis / rekruter
    ├── executive_summary.pdf
    └── visuals/                # Tangkapan layar dashboard dan grafik utama
```

---

## 🔬 Standar Pembuktian Hasil (Proof of Work Checklist)
- [ ] Menyediakan skrip reproduksi data otomatis (*one-click execution*).
- [ ] Memisahkan data mentah (*read-only*) dari data olahan (*immutable pipeline*).
- [ ] Menyertakan dokumentasi kamus data (*data dictionary*) untuk setiap metrik.
- [ ] Menyertakan interpretasi bisnis dan rekomendasi keputusan taktis, bukan sekadar menampilkan grafik.

