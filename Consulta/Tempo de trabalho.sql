SELECT DISTINCT
    c.nome_cidade,
    t.tempo
FROM tempo_trabalho t
INNER JOIN cidade c
    ON t.id_cidade = c.id_cidade
ORDER BY c.nome_cidade;
GO