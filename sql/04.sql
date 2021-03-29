/*
 * List the name of all actors who have appeared in a movie that has the 'Behind the Scenes' special_feature
 */

SELECT DISTINCT
    first_name || ' ' || last_name AS "Actor Name"
    FROM (
    SELECT
            film_id,
            title,
            rating,
            unnest(special_features)
        FROM film
    ) AS t
   JOIN film_actor fa1 ON t.film_id = fa1.film_id
   JOIN actor a1 ON fa1.actor_id = a1.actor_id
   WHERE 
        unnest = 'Behind the Scenes'
   ORDER BY "Actor Name"
;
