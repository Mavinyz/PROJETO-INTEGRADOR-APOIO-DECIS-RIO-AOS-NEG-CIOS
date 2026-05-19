USE cesta_basica;
GO

-- ============================================================
-- CONSULTA OLAP - ROLL-UP REGIONAL
-- Contribuição: André Luís
-- Objetivo: complementar as evidências OLAP do projeto,
-- agrupando o custo da cesta básica por região, cidade e total geral.
-- ============================================================

WITH base_olap AS (
    SELECT
        CASE
            WHEN c.nome_cidade IN ('São Paulo', 'Rio de Janeiro', 'Belo Horizonte', 'Vitória') THEN 'Sudeste'
            WHEN c.nome_cidade IN ('Curitiba', 'Florianópolis', 'Porto Alegre') THEN 'Sul'
            WHEN c.nome_cidade IN ('Brasília', 'Campo Grande', 'Goiânia') THEN 'Centro-Oeste'
            WHEN c.nome_cidade IN ('Salvador', 'Recife', 'Fortaleza', 'Natal', 'João Pessoa', 'Aracaju') THEN 'Nordeste'
            WHEN c.nome_cidade IN ('Belém') THEN 'Norte'
            ELSE 'Não classificada'
        END AS regiao,
        c.nome_cidade,
        d.mes,
        d.ano,
        g.valor
    FROM gasto_mensal g
    INNER JOIN cidade c
        ON g.id_cidade = c.id_cidade
    INNER JOIN data_referencia d
        ON g.id_data = d.id_data
)

SELECT
    ISNULL(regiao, 'TOTAL GERAL') AS regiao,
    ISNULL(nome_cidade, 'TODAS AS CIDADES') AS cidade,
    COUNT(*) AS qtd_registros,
    SUM(valor) AS total_cesta_basica,
    AVG(valor) AS media_cesta_basica,
    MIN(valor) AS menor_valor,
    MAX(valor) AS maior_valor
FROM base_olap
GROUP BY ROLLUP (regiao, nome_cidade)
ORDER BY
    regiao,
    cidade;
GO
