SELECT AVG(total_students) as average_students
FROM (
  SELECT count(students) as total_students
  FROM students
  JOIN cohorts ON cohorts.id = cohort_id
  GROUP BY cohorts
) as total_table;




