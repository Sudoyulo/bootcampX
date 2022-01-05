-- SELECT SUM(completed_at-started_at) / COUNT(distinct cohorts.name) 
-- AS average_total_duration 
-- FROM assistance_requests
-- JOIN students ON students.id = student_id
-- JOIN cohorts ON cohorts.id = students.cohort_id
-- ;

SELECT AVG(total_duration) AS average_total_duration 
FROM (
SELECT cohorts.name AS cohort, 
SUM(completed_at-started_at) AS total_duration
FROM assistance_requests
JOIN students ON students.id = student_id
JOIN cohorts ON cohorts.id = students.cohort_id
GROUP BY cohorts.name
ORDER BY SUM(completed_at-started_at) ASC
) as total_duration;



-- SELECT avg (total_duration) as average_total_duration
-- FROM (
--   SELECT cohorts.name as cohort, sum(completed_at-started_at) as total_duration
--   FROM assistance_requests
--   JOIN students ON students.id = student_id
--   JOIN cohorts on cohorts.id = cohort_id
--   GROUP BY cohorts.name
--   ORDER BY total_duration
-- ) as total_durations;