/*
 * Count the number of movies that contain each type of special feature.
 * Order the results alphabetically be the special_feature.
 */

SELECT f AS special_features, 
       COUNT(*) as count
FROM (
    SELECT unnest(special_features) AS f
    FROM film
) AS features
GROUP BY special_features
ORDER BY special_features;
