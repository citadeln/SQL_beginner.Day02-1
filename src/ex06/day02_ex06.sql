WITH ALL_PIZZAS AS
    (SELECT pizza_name,
        pizzeria.name AS pizzeria_name,
        person_id
    FROM menu
    INNER JOIN pizzeria ON pizzeria_id = pizzeria.id
    ORDER BY pizza_name, pizzeria_name)
SELECT pizza_name,
       pizzeria_name
INNER JOIN person ON person.id = person_id
FROM ALL_PIZZAS


-- WITH orders_Denis_Anna AS
--     (SELECT missing_date::date
--     FROM generate_series('2022-01-01', '2022-01-10', interval '1 day') as missing_date
--     LEFT JOIN (select * FROM person_visits WHERE person_visits.person_id = 1 OR person_visits.person_id = 2) as person_visits2 ON visit_date = missing_date
--     WHERE person_visits2.visit_date is NULL)
-- SELECT * FROM orders_Denis_Anna
-- ORDER BY pizza_name, pizzeria_name;