SELECT cohorts.name, AVG(assistance_requests.completed_at - assistance_requests.started_at) AS average_assistance_time
FROM assistance_requests
JOIN students ON student_id = students.id
JOIN cohorts ON cohort_id = cohorts.id
WHERE average_assistance_time > average_assistance_time
GROUP BY cohorts.name
ORDER BY average_assistance_time DESC;