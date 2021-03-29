/*
 * List the title of all movies that have both the 'Behind the Scenes' and the 'Trailers' special_feature
 *
 * HINT:
 * Create a select statement that lists the titles of all tables with the 'Behind the Scenes' special_feature.
 * Create a select statement that lists the titles of all tables with the 'Trailers' special_feature.
 * Inner join the queries above.
 */

SELECT 
    t1.title
    FROM (
    SELECT 
        film_id,
        title,
        unnest(special_features)
        FROM film
    ) as t1
    JOIN (
    SELECT 
        film_id,
        title,
        unnest(special_features)
        FROM film
    ) as t2 USING (film_id)
    WHERE
        t1.unnest = 'Behind the Scenes' AND
        t2.unnest = 'Trailers'
    ORDER BY
        t1.title
    ;

