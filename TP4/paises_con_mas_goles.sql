-- Para mostrar solo los 3 países con mayor cantidad de goles, le agrego la cláusula LIMIT al final de la consulta: -- 

SELECT tot.codigo_pais, SUM(tot.goles) AS goltot
FROM (
    SELECT cod_local AS codigo_pais, gol_local AS goles
    FROM Partido
    UNION ALL
    SELECT cod_visitante AS codigo_pais, gol_visitante AS goles
    FROM Partido
) AS tot
GROUP BY tot.codigo_pais
ORDER BY goltot DESC
LIMIT 3;
