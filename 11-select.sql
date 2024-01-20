USE metro_cdmx;

--seleccionar todo
SELECT * FROM `lines`;

--filtrar por columnas
SELECT id, name, color FROM `lines`;

--operaciones matematicas con SELECT

SELECT(2+2);

SELECT(2 + 2) AS resultado;

SELECT AVG(year) FROM `trains`;

SELECT AVG(year) AS year_avg FROM `trains`;

--juntar tablas

SELECT 
`lines`.`name`,
`trains`.`serial_number`
FROM `lines`
INNER JOIN `trains`
ON `lines`.`id` = `trains`.`line_id`  