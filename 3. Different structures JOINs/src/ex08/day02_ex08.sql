SELECT DISTINCT name
FROM person
         JOIN person_order ON person.id = person_order.person_id
         JOIN menu ON person_order.menu_id = menu.id
WHERE person.gender = 'male'
  AND (person.address = 'Samara' OR person.address = 'Moscow')
  AND (menu.pizza_name = 'pepperoni pizza' OR
       menu.pizza_name = 'mushroom pizza')
ORDER BY name DESC