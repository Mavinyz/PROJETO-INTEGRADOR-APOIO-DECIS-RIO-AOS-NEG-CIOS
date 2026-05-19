# 📚 Trabalho Acadêmico (PTI): Modelagem e Consultas OLAP - Cesta Básica

Este repositório contém o projeto de banco de dados desenvolvido para a atividade prática (PTI) da faculdade. O objetivo do projeto é analisar o custo da cesta básica em diferentes capitais brasileiras e o tempo de trabalho necessário para adquiri-la, aplicando conceitos de modelagem relacional e consultas analíticas.

O script foi desenvolvido utilizando a sintaxe do **SQL Server (T-SQL)**.

---

## 📐 Modelo Relacional (Estrutura)

O banco de dados foi estruturado com as seguintes tabelas para garantir a integridade referencial:
* `cidade`: Cadastro das capitais analisadas.
* `data_referencia`: Armazena o período (mês/ano) dos dados coletados.
* `gasto_mensal`: Registra o valor total da cesta básica por cidade.
* `preco_medio`: Histórico de preços médios pesquisados.
* `tempo_trabalho`: Registra as horas e minutos necessários de trabalho por cidade.

---

## 🖥️ Como Executar o Script

Para fins de avaliação do trabalho, o script contém a criação do banco de dados, a estrutura das tabelas (DDL), a carga de dados de teste (DML) e os relatórios solicitados.

1. Abra o **SQL Server Management Studio (SSMS)** ou ferramenta compatível.
2. Copie e cole o código do arquivo `script.sql` (ou abra o arquivo diretamente na ferramenta).
3. Execute o script completo (`F5`) para criar a base de dados `cesta_basica` e visualizar o resultado das consultas no painel inferior.

---

## 📊 Análise de Dados e Operações OLAP Implementadas

Além das consultas relacionais tradicionais (como médias, valores máximos e mínimos), o projeto demonstra a aplicação de funções de apoio à decisão através de operações **OLAP**:

* **Drill Down:** Detalha os dados agregados descendo para o nível de granularidade por cidade.
* **Roll Up:** Consolida as métricas em um super-resumo com indicadores globais (Total, Média, Máximo e Mínimo).
* **Slice:** Realiza um corte na dimensão espacial, filtrando os dados especificamente para a cidade de 'São Paulo'.

---
🎓 *Projeto desenvolvido exclusivamente para composição de nota acadêmica.*
