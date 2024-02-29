/*
 * This problem is the same as 06.sql,
 * but instead of using the NOT IN operator, you are to use a LEFT JOIN.
 */

SELECT title
FROM film f
LEFT JOIN inventory i ON
    f.film_id = i.film_id
WHERE i.inventory_id IS NULL
ORDER BY f.title;
