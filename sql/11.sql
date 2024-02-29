/*
 * List the name of all actors who have appeared in a movie that has the 'Behind the Scenes' special_feature
 */

SELECT DISTINCT actor.first_name || ' ' || actor.last_name AS "Actor Name"
FROM film f1
JOIN film_actor USING (film_id)
JOIN actor USING (actor_id)
WHERE 'Behind the Scenes' IN (
    SELECT unnest(special_features)
    FROM film f2
    WHERE f1.film_id = f2.film_id
)
ORDER BY "Actor Name";
