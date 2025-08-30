--Find companies with average salary above overall average:
SELECT company_name, AVG(CAST(salary AS INT)) AS avg_salary
FROM Australian_Job_Market
WHERE ISNUMERIC(salary) = 1
GROUP BY company_name
HAVING AVG(CAST(salary AS INT)) > (
    SELECT AVG(CAST(salary AS INT)) FROM Australian_Job_Market WHERE ISNUMERIC(salary) = 1
);


--Rank jobs by salary within each location:
SELECT job_title, location, salary,
       RANK() OVER (PARTITION BY location ORDER BY CAST(salary AS INT) DESC) AS salary_rank
FROM Australian_Job_Market
WHERE ISNUMERIC(salary) = 1;



--Cumulative Count of Jobs per Company

SELECT company_name,
       job_title,
       COUNT(*) OVER (PARTITION BY company_name ORDER BY job_title) AS cumulative_jobs
FROM Australian_Job_Market;