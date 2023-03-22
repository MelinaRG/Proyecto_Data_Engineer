SELECT actor.nombre, COUNT(*) as apariciones
FROM actor
JOIN cast_actor ON actor.id_actor = cast_actor.id_actor
JOIN program ON cast_actor.id_cast = program.id_cast
JOIN platform ON program.id_platform = platform.id_platform
WHERE platform.plataforma = 'Netflix' AND actor.nombre <> 'Sin Dato'
GROUP BY actor.nombre
ORDER BY apariciones DESC
LIMIT 1;
