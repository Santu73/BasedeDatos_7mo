-- La siguiente consulta une todos los partidos (locales y visitantes) y calcula la suma total de goles por cada país: --

SELECT tot.codigo_pais, SUM(tot.goles) AS goltot
FROM (
    SELECT cod_local AS codigo_pais, gol_local AS goles
    FROM Partido
    UNION ALL
    SELECT cod_visitante AS codigo_pais, gol_visitante AS goles
    FROM Partido
) AS tot
GROUP BY tot.codigo_pais
ORDER BY goltot DESC;
