DECLARE @cidade VARCHAR(100);

SET @cidade = 'São Paulo';

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

WHERE c.nome_cidade = @cidade;
GO