-- =========================================
-- CRIAÇÃO DO BANCO
-- =========================================

CREATE DATABASE cesta_basica;
GO

USE cesta_basica;
GO

-- =========================================
-- TABELA CIDADE
-- =========================================

CREATE TABLE cidade (
    id_cidade INT PRIMARY KEY IDENTITY(1,1),
    nome_cidade VARCHAR(100) NOT NULL
);
GO

-- =========================================
-- TABELA DATA REFERENCIA
-- =========================================

CREATE TABLE data_referencia (
    id_data INT PRIMARY KEY IDENTITY(1,1),
    mes INT NOT NULL,
    ano INT NOT NULL
);
GO

-- =========================================
-- TABELA GASTO MENSAL
-- =========================================

CREATE TABLE gasto_mensal (
    id_gasto INT PRIMARY KEY IDENTITY(1,1),
    id_cidade INT,
    id_data INT,
    valor DECIMAL(10,2),

    CONSTRAINT fk_gasto_cidade
        FOREIGN KEY (id_cidade)
        REFERENCES cidade(id_cidade),

    CONSTRAINT fk_gasto_data
        FOREIGN KEY (id_data)
        REFERENCES data_referencia(id_data)
);
GO

-- =========================================
-- TABELA PRECO MEDIO
-- =========================================

CREATE TABLE preco_medio (
    id_preco INT PRIMARY KEY IDENTITY(1,1),
    id_cidade INT,
    id_data INT,
    valor DECIMAL(10,2),

    CONSTRAINT fk_preco_cidade
        FOREIGN KEY (id_cidade)
        REFERENCES cidade(id_cidade),

    CONSTRAINT fk_preco_data
        FOREIGN KEY (id_data)
        REFERENCES data_referencia(id_data)
);
GO

-- =========================================
-- TABELA TEMPO TRABALHO
-- =========================================

CREATE TABLE tempo_trabalho (
    id_tempo INT PRIMARY KEY IDENTITY(1,1),
    id_cidade INT,
    id_data INT,
    tempo VARCHAR(20),

    CONSTRAINT fk_tempo_cidade
        FOREIGN KEY (id_cidade)
        REFERENCES cidade(id_cidade),

    CONSTRAINT fk_tempo_data
        FOREIGN KEY (id_data)
        REFERENCES data_referencia(id_data)
);
GO

-- =========================================
-- INSERT CIDADE
-- =========================================

INSERT INTO cidade (nome_cidade)
VALUES
('Brasília'),
('Campo Grande'),
('Goiânia'),
('Belo Horizonte'),
('Rio de Janeiro'),
('São Paulo'),
('Vitória'),
('Curitiba'),
('Florianópolis'),
('Porto Alegre'),
('Belém'),
('Aracaju'),
('Fortaleza'),
('João Pessoa'),
('Natal'),
('Recife'),
('Salvador');
GO

-- =========================================
-- INSERT DATA
-- =========================================

INSERT INTO data_referencia (mes, ano)
VALUES
(1, 2024);
GO

-- =========================================
-- INSERT GASTO MENSAL
-- =========================================

INSERT INTO gasto_mensal (id_cidade, id_data, valor)
VALUES
(1,1,742.52),
(2,1,736.76),
(3,1,710.70),
(4,1,736.36),
(5,1,791.77),
(6,1,793.39),
(7,1,719.30),
(8,1,726.23),
(9,1,800.31),
(10,1,791.16),
(11,1,656.78),
(12,1,528.48),
(13,1,618.32),
(14,1,559.77),
(15,1,575.71),
(16,1,550.51),
(17,1,593.26);
GO

-- =========================================
-- INSERT PRECO MEDIO
-- =========================================

INSERT INTO preco_medio (id_cidade, id_data, valor)
VALUES
(1,1,742.52),
(2,1,736.76),
(3,1,710.70),
(4,1,736.36),
(5,1,791.77),
(6,1,793.39),
(7,1,719.30),
(8,1,726.23),
(9,1,800.31),
(10,1,791.16),
(11,1,656.78),
(12,1,528.48),
(13,1,618.32),
(14,1,559.77),
(15,1,575.71),
(16,1,550.51),
(17,1,593.26);
GO

-- =========================================
-- INSERT TEMPO TRABALHO
-- =========================================

INSERT INTO tempo_trabalho (id_cidade, id_data, tempo)
VALUES
(1,1,'115h41m'),
(2,1,'114h47m'),
(3,1,'110h44m'),
(4,1,'114h44m'),
(5,1,'123h22m'),
(6,1,'123h37m'),
(7,1,'112h04m'),
(8,1,'113h09m'),
(9,1,'124h41m'),
(10,1,'123h16m'),
(11,1,'102h20m'),
(12,1,'82h20m'),
(13,1,'96h20m'),
(14,1,'87h13m'),
(15,1,'89h42m'),
(16,1,'85h46m'),
(17,1,'92h26m');
GO
