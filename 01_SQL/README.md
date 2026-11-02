# 🏛️ Modul 01: Advanced SQL for Analytics & Quantitative Finance

Selamat datang di modul **SQL Analitik Tingkat Lanjut**. Folder ini berfokus pada teknik kueri tingkat industri, manipulasi data relasional performa tinggi, dan pemecahan kasus analitik kompleks tanpa membebani memori aplikasi.

---

## 🎯 Fokus Kompetensi & Target Pembelajaran

1. **Window Functions & Analytics Functions:**
   - Ranking: `ROW_NUMBER()`, `RANK()`, `DENSE_RANK()`, `NTILE()`.
   - Value & Offset: `LEAD()`, `LAG()`, `FIRST_VALUE()`, `LAST_VALUE()`.
   - Window Framing: Pemahaman presisi antara `ROWS BETWEEN` vs `RANGE BETWEEN` untuk time-series data keuangan.
2. **Modular Query Design:**
   - Penggunaan Common Table Expressions (CTEs) untuk memecah masalah bisnis berlapis.
   - Recursive CTEs untuk pemodelan data hierarkis dan kalender perdagangan (*trading calendar generation*).
3. **Optimasi & Execution Plans:**
   - Membaca dan menganalisis rencana eksekusi menggunakan `EXPLAIN ANALYZE`.
   - Pemanfaatan indeks (B-Tree, BRIN untuk data time-series) dan optimasi filtering/partitioning.
4. **Studi Kasus Keuangan & Transaksional:**
   - Menghitung *Running Balances*, *Daily Active Traded Volumes*, *Customer Lifetime Value (CLV)*, dan *Rolling Metrics*.

---

## 📂 Struktur Modul

```text
01_SQL/
├── README.md                   # Dokumen panduan modul (file ini)
├── queries/                    # Latihan konsep atomik
│   ├── 01_window_functions.sql
│   ├── 02_advanced_ctes.sql
│   └── 03_query_optimization.sql
└── case_studies/               # Studi kasus nyata (misal: analisis transaksi e-commerce & pasar modal)
    ├── transaction_reconciliation.sql
    └── cohort_retention_analysis.sql
```

---

## 💡 Konvensi Penulisan Kode (Query Style Guide)

- **Kata Kunci (Keywords):** Gunakan huruf kapital penuh (`SELECT`, `FROM`, `WHERE`, `GROUP BY`, `OVER`, `PARTITION BY`).
- **Penamaan Objek:** Gunakan `snake_case` untuk nama tabel, kolom, dan alias CTE.
- **Keterbacaan:** Setiap kolom turunan atau window function harus memiliki alias eksplisit (`AS <nama_kolom>`) dan indentasi yang seragam.

