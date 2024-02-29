/*
 * List the title of all movies that have both the 'Behind the Scenes' and the 'Trailers' special_feature
 *
 * HINT:
 * Create a select statement that lists the titles of all tables with the 'Behind the Scenes' special_feature.
 * Create a select statement that lists the titles of all tables with the 'Trailers' special_feature.
 * Inner join the queries above.
 */

SELECT scenes.title
FROM (
    SELECT title
    FROM film f1
    WHERE 'Behind the Scenes' IN (
        SELECT unnest(special_features)
        FROM film f2
        WHERE f1.film_id = f2.film_id
    )
) AS scenes
INNER JOIN (
    SELECT title
    FROM film f1
    WHERE 'Trailers' IN (
        SELECT unnest(special_features)
        FROM film f2
        WHERE f1.film_id = f2.film_id
    )
) AS trailers
ON scenes.title = trailers.title
ORDER BY title;
