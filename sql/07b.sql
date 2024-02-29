/*
 * This problem is the same as 07.sql,
 * but instead of using the NOT IN operator, you are to use a LEFT JOIN.
 */

SELECT title
FROM film f
JOIN inventory
USING (film_id)
LEFT JOIN rental
USING (inventory_id)
LEFT JOIN customer
USING (customer_id)
LEFT JOIN address
USING (address_id)
LEFT JOIN city
USING (city_id)
LEFT JOIN country
USING (country_id)
GROUP BY f.title
HAVING count(CASE WHEN country = 'United States' THEN 1 END) = 0
ORDER BY title;
