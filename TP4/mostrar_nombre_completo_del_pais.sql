-- Para mostrar el nombre completo de los países en lugar de sus códigos, se puede utilizar un JOIN con la tabla Equipo:  --

SELECT eq.nombre_pais, SUM(tot.goles) AS goltot
FROM (
    SELECT cod_local AS codigo_pais, gol_local AS goles
    FROM Partido
    UNION ALL
    SELECT cod_visitante AS codigo_pais, gol_visitante AS goles
    FROM Partido
) AS tot
JOIN Equipo eq ON tot.codigo_pais = eq.codigo_pais
GROUP BY eq.nombre_pais
ORDER BY goltot DESC;
