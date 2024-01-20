USE metro_cdmx;


INSERT INTO `lines_stations`(line_id,station_id) VALUES
(
    (
        SELECT `lines`.`id`
        FROM `lines`
        WHERE `lines`.`name` = "LINEA 5"
    ),
    (
        SELECT `stations.id`
        FROM `stations`
        WHERE `stations`.`name` = "Ferrería"
    )
);



--siguiente amarillo