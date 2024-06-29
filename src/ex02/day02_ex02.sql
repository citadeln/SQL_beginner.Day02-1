SELECT coalesce(person.name, '-'),
    visit_date,
    coalesce(pizzeria.name, '-')
FROM person_visits
FULL OUTER JOIN person ON person.id = person_id
FULL OUTER JOIN  pizzeria ON pizzeria.id = pizzeria_id
ORDER BY 1, 2, 3
