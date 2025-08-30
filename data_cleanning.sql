
UPDATE Australian_Job_Market
SET salary = LTRIM(RTRIM(REPLACE(REPLACE(REPLACE(salary, ',', ''), '$', ''), 'AUD', '')))
WHERE salary IS NOT NULL;


DELETE FROM Australian_Job_Market
WHERE job_title IN (
    SELECT job_title
    FROM Australian_Job_Market
    GROUP BY job_title, company_name, location
    HAVING COUNT(*) > 1
);

UPDATE Australian_Job_Market
SET location = LTRIM(RTRIM(location));

select * from Australian_Job_Market;