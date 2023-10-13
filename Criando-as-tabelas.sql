-- Desafio SQL do Bootcamp Python para ciência de dados
-- Cliente, veículo, equipe de serviço, OS (n, data de emissão, status, Mão de obra, preço das peças, data de entrega)
-- mecânico (código, nome, endereço e especialidade)

CREATE DATABASE IF NOT EXISTS oficina;

USE oficina;

CREATE TABLE cliente (
	cliente_id INT NOT NULL AUTO_INCREMENT,
	nome VARCHAR(100) NOT NULL,
	veiculo BIGINT UNIQUE NOT NULL,
    PRIMARY KEY (cliente_id)
);

CREATE TABLE veículo (
	cliente_id INT NOT NULL,
    veiculo_id BIGINT UNIQUE NOT NULL,
    PRIMARY KEY (veiculo_id)
);

CREATE TABLE mecânico (
	código BIGINT UNIQUE,
    nome VARCHAR(100) NOT NULL,
    endereço VARCHAR (150) NOT NULL,
    especialidade VARCHAR(50) NOT NULL,
    PRIMARY KEY (código)
);

CREATE TABLE peça (
	nome VARCHAR(100) NOT NULL UNIQUE,
    preco FLOAT NOT NULL,
    PRIMARY KEY (nome)
);

CREATE TABLE OS (
	os_num INT UNIQUE NOT NULL,
    data_emissao DATE NOT NULL,
    os_status VARCHAR(100) NOT NULL,
    mao_de_obra VARCHAR(50) NOT NULL,
    preco_total FLOAT NOT NULL,
    data_entrega DATE NOT NULL,
    PRIMARY KEY (os_num)
);