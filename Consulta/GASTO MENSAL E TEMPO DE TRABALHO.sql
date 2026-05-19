-- CONSULTA COMPARAÇÃO ENTRE GASTO MENSAL E TEMPO DE TRABALHO 

SELECT DISTINCT
    c.nome_cidade,
    g.valor,
    t.tempo
FROM cidade c

INNER JOIN gasto_mensal g
    ON c.id_cidade = g.id_cidade

INNER JOIN tempo_trabalho t
    ON c.id_cidade = t.id_cidade
    AND g.id_data = t.id_data

ORDER BY g.valor DESC;
GO