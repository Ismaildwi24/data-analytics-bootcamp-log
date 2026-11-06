-- Problem Practice 4
SELECT job_id, 
	   job_title_short, 
       job_location, 
       job_via,
       salary_year_avg
FROM job_postings_fact
WHERE job_location IN ('Tampa, FL')