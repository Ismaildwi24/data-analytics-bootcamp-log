-- Problem Practice 8
SELECT job_id, 
	   job_title_short, 
       job_location, 
       job_via,
       salary_year_avg
FROM job_postings_fact
WHERE salary_year_avg = 65000 OR  salary_year_avg > 65000 