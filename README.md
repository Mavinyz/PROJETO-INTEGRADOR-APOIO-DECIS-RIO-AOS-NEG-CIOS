# 📚 Trabalho Acadêmico (PTI): Modelagem e Consultas OLAP - Cesta Básica

Este repositório contém o projeto de banco de dados desenvolvido para a atividade prática (PTI) da faculdade. O objetivo do projeto é analisar o custo da cesta básica em diferentes capitais brasileiras e o tempo de trabalho necessário para adquiri-la, aplicando conceitos de modelagem relacional e consultas analíticas (OLAP).

O projeto está estruturado em scripts separados utilizando a sintaxe do **SQL Server (T-SQL)**.

---

## 📁 Estrutura do Repositório

Com base na organização dos arquivos do projeto, o repositório está estruturado da seguinte forma:

```text
├── 📁 Consulta/
│   ├── 📄 CONSULTA OLAP.sql
│   ├── 📄 Cidade com maior valor.sql
│   ├── 📄 GASTO MENSAL E TEMPO DE TRABALHO.sql
│   ├── 📄 Média do gasto.sql
│   ├── 📄 Roll Up.sql
│   ├── 📄 Slice.sql
│   └── 📄 Tempo de trabalho.sql
├── 📄 Banco.sql
└── 📄 README.md

Banco.sql: Script principal responsável pela criação do banco de dados, definição da estrutura das tabelas (DDL) e inserção dos dados fictícios/reais de teste (DML).

Pasta Consulta/: Contém os scripts SQL específicos para relatórios, análises de dados e operações analíticas fundamentais.

📐 Modelo Relacional (Estrutura)
O banco de dados foi estruturado com as seguintes tabelas para garantir a integridade referencial:

cidade: Cadastro das capitais analisadas.

data_referencia: Armazena o período (mês/ano) dos dados coletados.

gasto_mensal: Registra o valor total da cesta básica por cidade.

preco_medio: Histórico de preços médios pesquisados.

tempo_trabalho: Registra as horas e minutos necessários de trabalho por cidade.

🖥️ Como Executar os Scripts
Para fins de avaliação do trabalho e visualização dos resultados, siga a ordem de execução recomendada abaixo:

1. Criação do Banco e Carga de Dados
Abra o SQL Server Management Studio (SSMS) ou ferramenta compatível.

Abra e execute primeiro o arquivo Banco.sql (F5). Isso criará a base de dados cesta_basica, criará todas as tabelas e fará a carga inicial dos dados (DML).

2. Execução das Consultas e Relatórios
Após a base de dados estar devidamente criada e populada, você pode navegar até a pasta Consulta/ e executar individualmente os scripts analíticos conforme o relatório desejado:

Execute as consultas de agregação e métricas específicas utilizando os arquivos como Média do gasto.sql, Tempo de trabalho.sql ou Cidade com maior valor.sql.

Execute os scripts de operações analíticas dedicadas (Roll Up.sql, Slice.sql, etc.) para verificar as visões multidimensionais.

📊 Análise de Dados e Operações OLAP Implementadas
Além das consultas relacionais tradicionais (como médias, valores máximos e mínimos), o projeto demonstra a aplicação de funções de apoio à decisão através de operações OLAP:

Drill Down / Detalhes: Detalha os dados agregados descendo para o nível de granularidade por cidade e métricas combinadas (presente em CONSULTA OLAP.sql e GASTO MENSAL E TEMPO DE TRABALHO.sql).

Roll Up: Consolida as métricas em um super-resumo com indicadores globais (Total, Média, Máximo e Mínimo) utilizando agrupamentos estendidos (Roll Up.sql).

Slice: Realiza um corte na dimensão espacial, filtrando os dados especificamente para uma subanálise, como a cidade de 'São Paulo' (Slice.sql).

🎓 Projeto desenvolvido exclusivamente para composição de nota acadêmica.
