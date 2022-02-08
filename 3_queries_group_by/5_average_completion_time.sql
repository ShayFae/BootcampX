SELECT students.name AS student, AVG(assignment_submissions.duration) AS average_submission_duration
FROM assignment_submissions
JOIN students ON student_id = students.id
GROUP BY students.name, students.end_date
HAVING students.end_date IS NULL
ORDER BY average_submission_duration DESC;