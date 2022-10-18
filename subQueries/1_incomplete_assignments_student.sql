SELECT students.name as student_name,
(
  SELECT count(assignments)
  FROM assignments
) - count(assignment_submissions) as total_incomplete_assignments
FROM assignment_submissions
JOIN students ON students.id = student_id

WHERE students.name = 'Ibrahim Schimmel'
GROUP BY students.name;