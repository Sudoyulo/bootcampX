SELECT day, COUNT(day) AS total_assignments
FROM assignments
GROUP BY day
ORDER BY day ASC
;

-- SELECT day, count(*) as total_assignments 
-- FROM assignments
-- GROUP BY day
-- ORDER BY day;