WITH cte_missing_dates(missing_date) AS (
    SELECT days::DATE
    FROM generate_series('2022-01-01', '2022-01-10', interval '1 day') AS days
)
SELECT missing_date 
FROM cte_missing_dates
LEFT JOIN (
    SELECT visit_date
    FROM person_visits 
    WHERE (person_id = 1 OR person_id = 2)
      AND visit_date BETWEEN '2022-01-01' AND '2022-01-10'
) AS d ON missing_date = d.visit_date 
WHERE d.visit_date IS NULL
ORDER BY missing_date;
