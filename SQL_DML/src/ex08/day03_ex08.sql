INSERT INTO menu values (
    (SELECT (max(id) + 1) FROM menu),
    (SELECT id FROM pizzeria WHERE name = 'Dominos'),
    'sicilian pizza',
    900);

-- SELECT * FROM menu
-- ORDER BY id;

-- DELETE FROM menu WHERE pizza_name = 'sicilian pizza' AND price = 900;
