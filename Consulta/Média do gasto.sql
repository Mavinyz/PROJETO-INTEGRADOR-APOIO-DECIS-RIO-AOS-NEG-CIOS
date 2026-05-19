SELECT
    c.nome_cidade,
    ROUND(AVG(g.valor), 2) AS media_gasto
FROM gasto_mensal g
INNER JOIN cidade c
    ON g.id_cidade = c.id_cidade
GROUP BY c.nome_cidade
ORDER BY media_gasto DESC;
GO