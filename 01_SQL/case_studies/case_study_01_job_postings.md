# 📋 Case Study 01: Job Market Analysis (`job_postings_fact`)

> **Module:** 01_SQL  
> **Source Table:** `job_postings_fact`  
> **Target Query Directory:** [`01_SQL/queries/`](../queries/)  
> **Objective:** Foundational exploration, projection, filtering, and sorting of tech job market postings.

---

## 📌 Dataset Schema Context

This case study operates on the `job_postings_fact` table, which captures aggregated data on tech job postings worldwide.

### Relevant Table Attributes
| Column Name | Data Type | Description |
| :--- | :--- | :--- |
| `job_id` | `INTEGER` / `VARCHAR` | Unique identifier for each job posting (Primary Key). |
| `job_title_short` | `VARCHAR` | Standardized job role (e.g., 'Data Analyst', 'Data Engineer', 'Data Scientist'). |
| `job_location` | `VARCHAR` | Geographic location or remote work classification (e.g., 'Anywhere', 'New York, NY'). |
| `job_via` | `VARCHAR` | Job board or portal platform where the posting was sourced (e.g., 'via LinkedIn'). |
| `salary_year_avg` | `NUMERIC` | Annualized average salary offered in USD. |

---

## 🎯 Practice Problems

### 🔹 Practice Problem 1: Unique Job Locations
- **Business Question:**  
  Get the unique (distinct) job locations in the `job_postings_fact` table. Order in alphabetical order (ascending order).
- **Core Concepts:**  
  `SELECT DISTINCT`, `ORDER BY ... ASC`, handling unique values.
- **Expected Output Columns:**  
  - `job_location`
- **Target Script:**  
  [`01_SQL/queries/01_distinct_locations.sql`](../queries/)

---

### 🔹 Practice Problem 2: Structured Job Postings by Location
- **Business Question:**  
  In the `job_postings_fact` table, retrieve the columns `job_id`, `job_title_short`, `job_location`, and `job_via`. Order the results in ascending order by `job_location`.
- **Core Concepts:**  
  Multi-column selection, deterministic record ordering (`ORDER BY`).
- **Expected Output Columns:**  
  - `job_id`
  - `job_title_short`
  - `job_location`
  - `job_via`
- **Target Script:**  
  [`01_SQL/queries/02_postings_by_location.sql`](../queries/)

---

### 🔹 Practice Problem 3: Data Engineer Role Filtering & Salary Exploration
- **Business Question:**  
  In the `job_postings_fact` table, retrieve the columns `job_id`, `job_title_short`, `job_location`, `job_via`, and `salary_year_avg`. Filter the results to only include rows where `job_title_short` is `'Data Engineer'`.
- **Core Concepts:**  
  Row filtering (`WHERE` clause), exact string matching, selective column projection.
- **Expected Output Columns:**  
  - `job_id`
  - `job_title_short`
  - `job_location`
  - `job_via`
  - `salary_year_avg`
- **Target Script:**  
  [`01_SQL/queries/03_data_engineer_salaries.sql`](../queries/)

---

## 💡 Implementation Notes & Best Practices

1. **Keyword Formatting:** Use uppercase for SQL reserved keywords (`SELECT`, `DISTINCT`, `FROM`, `WHERE`, `ORDER BY`, `ASC`).
2. **Column Naming:** Preserve exact schema column names in `snake_case`.
3. **NULL Handling:** Observe whether `salary_year_avg` or `job_location` contains `NULL` values and how default ordering behaves.

