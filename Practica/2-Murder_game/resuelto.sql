/* Ejecute esta consulta para encontrar los nombres de las tablas en esta base de datos.*/

SELECT name 
FROM sqlite_master
WHERE type = 'table'

/* Ejecute esta consulta para encontrar la estructura de la tabla `crime_scene_report`*/

SELECT sql 
FROM sqlite_master
where name = 'crime_scene_report'

/*Leer la descripción y apuntar las dos testigos*/

SELECT description
FROM crime_scene_report

/* Ver los tres casos que ocurrieron ese día*/

SELECT *
FROM crime_scene_report
WHERE date = 20180115 AND city = 'SQL City';

/* Buscar en person los ID de las testigos */

/*Primera testigo sacar nombre completo*/
SELECT name, address_street_name, address_number
FROM person
WHERE address_street_name like "Northwestern Dr"
ORDER BY address_number DESC
LIMIT 1;

/*Segunda textigo* sacar nombre completo*/
SELECT name, address_street_name, address_number
FROM person
WHERE address_street_name like "Franklin Ave" AND name LIKE "Annabel%";


/*Primera testigo sacar ID*/
SELECT name,id
FROM person
WHERE name like "%Morty Schapiro%"

/*Segunda textigo* sacar ID*/
SELECT name,id
FROM person
WHERE name like "%Annabel Miller%"

/*Con la fecha sacamos el ID de miembro entero*/
SELECT membership_id, check_in_date
FROM get_fit_now_check_in
WHERE membership_id LIKE "48Z%" AND check_in_date LIKE 20180109

/*Con los dos id conseguido buscas el nombre de ambos*/
SELECT id,name
FROM get_fit_now_member
WHERE id like "%48Z7A%"

SELECT id,name
FROM get_fit_now_member
WHERE id like "%48Z55%"


/*Con el nombre sacamos el numero de licencia*/

SELECT name, id, license_id
FROM person
WHERE name IN ("Joe Germuska", "Jeremy Bowers");

/*Con el numero de licencia sacamos el numero de matricula*/
SELECT *
FROM drivers_license
WHERE id IN (173289, 423327);


-- JEREMY BOWERS
INSERT INTO solution VALUES (1, 'Jeremy Bowers');
SELECT value FROM solution;