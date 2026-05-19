SELECT
    SUM(valor) AS total_gastos,
    AVG(valor) AS media_gastos,
    MAX(valor) AS maior_valor,
    MIN(valor) AS menor_valor
FROM gasto_mensal;
GO