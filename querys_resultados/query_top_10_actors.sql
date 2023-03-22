SELECT actor.nombre, COUNT(*) as apariciones
FROM actor
JOIN cast_actor ON actor.id_actor = cast_actor.id_actor
JOIN program ON cast_actor.id_cast = program.id_cast
WHERE EXTRACT(YEAR FROM program.date_added) = (
  SELECT MAX(EXTRACT(YEAR FROM date_added)) FROM program
) 
  AND actor.nombre <> 'Sin Dato'
GROUP BY actor.nombre
ORDER BY apariciones DESC
LIMIT 10;
