/*
 * Compute the total revenue for each film.
 */

SELECT 
    title, 
    sum(CASE WHEN amount IS NULL THEN 0.00 ELSE amount END) AS revenue
FROM film
LEFT JOIN inventory USING (film_id)
LEFT JOIN rental USING (inventory_id)
LEFT JOIN payment USING (rental_id)
GROUP BY title
ORDER BY revenue DESC;
