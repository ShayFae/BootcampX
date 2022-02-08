SELECT day, count(assignments) AS total_assignments
FROM assignments
GROUP BY assignments.day
HAVING count(assignments) >= 10
ORDER BY day;