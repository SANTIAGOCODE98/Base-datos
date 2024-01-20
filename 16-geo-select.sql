USE metro_cdmx;

--calcular distancia en metros
SELECT
ST_Distance_Sphere(
    POINT(-99.14912224, 19.42729875),
    POINT(-99.13303971, 19.42543703)
) AS distance;

--calcular la distancia en km

SELECT
ST_Distance_Sphere(
    POINT(-99.14912224, 19.42729875),
    POINT(-99.13303971, 19.42543703)
)/1000 AS distance;


-- calculamos en km con consultadas anidadas

SELECT
ST_Distance_Sphere(
    (
        SELECT `locations`.`location`
        FROM `locations`
        INNER JOIN `stations`
        ON `stations`.`id` = `locations`.`station_id`
        WHERE `stations`.`name` = "Balderas"
    ),
        (
        SELECT `locations`.`location`
        FROM `locations`
        INNER JOIN `stations`
        ON `stations`.`id` = `locations`.`station_id`
        WHERE `stations`.`name` = "Pino Suarez"
    )
) / 1000 AS distance;