/*
 * Count the number of movies that contain each type of special feature.
 */

SELECT
    unnest AS special_features,
    count(*)
    FROM (
        SELECT
        unnest(special_features) 
        From film
    ) AS t
    GROUP BY unnest
    ORDER BY unnest
    ;
