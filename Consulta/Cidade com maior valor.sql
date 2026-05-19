SELECT TOP 1
    c.nome_cidade,
    g.valor
FROM gasto_mensal g
INNER JOIN cidade c
    ON g.id_cidade = c.id_cidade
ORDER BY g.valor DESC;
GO