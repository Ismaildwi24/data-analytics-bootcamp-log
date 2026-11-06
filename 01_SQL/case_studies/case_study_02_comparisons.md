# 📋 Case Study 02: Comparison Operators & Filtering (`job_postings_fact`)

> **Module:** 01_SQL  
> **Source Table:** `job_postings_fact`  
> **Target Query Directory:** [`01_SQL/queries/`](../queries/)  
> **Objective:** Mastering equality (`=`), inequality (`<>` / `!=`), and numerical comparison operators (`>`, `>=`, `<`) for granular dataset slicing.

---

## 📌 Dataset Schema Context

In this practice set, we utilize the `job_postings_fact` table to analyze employment arrangements, platform distribution, and salary benchmarks.

### Relevant Table Attributes
| Column Name | Data Type | Description |
| :--- | :--- | :--- |
| `job_id` | `INTEGER` / `VARCHAR` | Unique identifier for each job posting (Primary Key). |
| `job_title_short` | `VARCHAR` | Standardized job role (e.g., 'Data Analyst', 'Data Engineer'). |
| `job_location` | `VARCHAR` | Geographic location of the role (e.g., 'Tampa, FL', 'Anywhere'). |
| `job_via` | `VARCHAR` | Platform source of the job listing (e.g., 'via LinkedIn'). |
| `job_schedule_type` | `VARCHAR` | Employment schedule type (e.g., 'Full-Time', 'Part-time', 'Contractor'). |
| `salary_year_avg` | `NUMERIC` | Annual average salary benchmark in USD. |

---

## 🎯 Practice Problems

### 🔹 Practice Problem 1: Exact Location Match (`'Tampa, FL'`)
- **Business Question:**  
  In the `job_postings_fact` table, retrieve the columns `job_id`, `job_title_short`, `job_location`, `job_via`, and `salary_year_avg`. Only return rows where the job location is in `'Tampa, FL'`.
- **Core Concepts:**  
  Exact string equality comparison (`=`), handling strings containing commas and whitespace.
- **Expected Output Columns:**  
  `job_id`, `job_title_short`, `job_location`, `job_via`, `salary_year_avg`
- **Target Script:**  
  [`01_SQL/queries/04_jobs_in_tampa.sql`](../queries/)

---

### 🔹 Practice Problem 2: Employment Type Filtering (`'Full-Time'`)
- **Business Question:**  
  In the `job_postings_fact` table, retrieve the columns `job_id`, `job_title_short`, `job_location`, `job_via`, and `salary_year_avg`. Only return `'Full-Time'` jobs (hint: look at the `job_schedule_type` column).
- **Core Concepts:**  
  Equality condition on categorical scheduling attributes.
- **Expected Output Columns:**  
  `job_id`, `job_title_short`, `job_location`, `job_via`, `salary_year_avg`
- **Target Script:**  
  [`01_SQL/queries/05_full_time_jobs.sql`](../queries/)

---

### 🔹 Practice Problem 3: Negative Filtering (`NOT 'Part-time'`)
- **Business Question:**  
  In the `job_postings_fact` table, retrieve the columns `job_id`, `job_title_short`, `job_location`, `job_via`, and `salary_year_avg`. Only look at jobs that are not `'Part-time'` jobs (hint: look at the `job_schedule_type` column).
- **Core Concepts:**  
  Inequality operators (`<>` or `!=`), understanding SQL Three-Valued Logic (`TRUE`, `FALSE`, `UNKNOWN`) when handling negative predicates.
- **Expected Output Columns:**  
  `job_id`, `job_title_short`, `job_location`, `job_via`, `salary_year_avg`
- **Target Script:**  
  [`01_SQL/queries/06_non_part_time_jobs.sql`](../queries/)

---

### 🔹 Practice Problem 4: Excluding Specific Job Board (`NOT 'via LinkedIn'`)
- **Business Question:**  
  In the `job_postings_fact` table, retrieve the columns `job_id`, `job_title_short`, `job_location`, `job_via`, and `salary_year_avg`. Only look at jobs that are not posted `'via LinkedIn'`.
- **Core Concepts:**  
  String inequality filtering on platform attribution column.
- **Expected Output Columns:**  
  `job_id`, `job_title_short`, `job_location`, `job_via`, `salary_year_avg`
- **Target Script:**  
  [`01_SQL/queries/07_non_linkedin_jobs.sql`](../queries/)

---

### 🔹 Practice Problem 5: Inclusive Salary Floor (`>= $65,000`)
- **Business Question:**  
  In the `job_postings_fact` table, only get jobs that have an average yearly salary of $65,000 or greater. Also get the `job_id`, `job_title_short`, `job_location`, `job_via`, and `salary_year_avg` columns.
- **Core Concepts:**  
  Greater-than-or-equal-to comparison (`>=`), numeric literal formatting without currency symbols or thousands separators.
- **Expected Output Columns:**  
  `job_id`, `job_title_short`, `job_location`, `job_via`, `salary_year_avg`
- **Target Script:**  
  [`01_SQL/queries/08_salary_gte_65k.sql`](../queries/)

---

### 🔹 Practice Problem 6: Strict Salary Threshold (`> $55,000`)
- **Business Question:**  
  In the `job_postings_fact` table, only get jobs that have an average yearly salary greater than $55,000. Also get the `job_id`, `job_title_short`, `job_location`, `job_via`, and `salary_year_avg` columns.
- **Core Concepts:**  
  Strict inequality (`>`), boundary exclusivity.
- **Expected Output Columns:**  
  `job_id`, `job_title_short`, `job_location`, `job_via`, `salary_year_avg`
- **Target Script:**  
  [`01_SQL/queries/09_salary_gt_55k.sql`](../queries/)

---

### 🔹 Practice Problem 7: Salary Ceiling Upper Bound (`< $110,000`)
- **Business Question:**  
  In the `job_postings_fact` table, only get jobs that have an average yearly salary less than $110,000. Also return the `job_id`, `job_title_short`, `job_location`, `job_via`, and `salary_year_avg` columns.
- **Core Concepts:**  
  Less-than comparison operator (`<`), exploring lower-to-mid compensation tiers.
- **Expected Output Columns:**  
  `job_id`, `job_title_short`, `job_location`, `job_via`, `salary_year_avg`
- **Target Script:**  
  [`01_SQL/queries/10_salary_lt_110k.sql`](../queries/)

---

## 💡 Senior Data Analyst Tips & Insights

1. **ANSI Standard Inequality:**  
   Always prefer `<>` over `!=` for robust portability across data warehouses (PostgreSQL, BigQuery, Snowflake, DuckDB).
2. **Numeric Literals Syntax:**  
   Never include currency symbols (`$`) or commas (`,`) inside SQL numeric filters. Write `salary_year_avg >= 65000`, not `salary_year_avg >= '$65,000'`.
3. **Implicit `NULL` Suppression in Numeric Predicates:**  
   Comparing any numeric value against `NULL` (e.g., `NULL > 55000` or `NULL < 110000`) evaluates to `UNKNOWN`. As a result, job postings without documented salary data (`salary_year_avg IS NULL`) are automatically excluded from the result set.
4. **Inclusive vs. Strict Boundaries:**  
   Pay careful attention to requirements asking for *"X or greater"* (`>=`) versus *"greater than X"* (`>`). In compensation analytics, inclusion of edge values can shift median and mean statistics across salary bands.
