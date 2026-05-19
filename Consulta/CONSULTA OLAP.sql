SELECT
    COUNT(*) AS total_registros,
    AVG(valor) AS media_valor,
    MAX(valor) AS maior_valor,
    MIN(valor) AS menor_valor
FROM gasto_mensal;
GO