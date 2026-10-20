SELECT order_date, FORMAT('%s (age:%s)', name, age) AS person_information
FROM person_order
    NATURAL JOIN (
        SELECT people.id AS person_id, name, age
        FROM person people) AS tmp
ORDER BY order_date, name;
