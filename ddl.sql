CREATE DATABASE estoque_loja;
USE estoque_loja;

CREATE TABLE categoria (
    id INT(11) PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    descricao VARCHAR(255)
);

CREATE TABLE fornecedor (
    id INT(11) PRIMARY KEY,
    razao_social VARCHAR(150) NOT NULL,
    nome_fantasia VARCHAR(100) NOT NULL,
    cnpj VARCHAR(18) NOT NULL UNIQUE,
    telefone VARCHAR(20),
    email VARCHAR(150),
    endereco VARCHAR(255)
);

CREATE TABLE produto (
    id INT(11) PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    descricao VARCHAR(255),
    preco DECIMAL(10,2) NOT NULL,
    marca VARCHAR(100),
    id_categoria INT(11) NOT NULL,
    id_fornecedor INT(11) NOT NULL,
    FOREIGN KEY (id_categoria) REFERENCES categoria(id),
    FOREIGN KEY (id_fornecedor) REFERENCES fornecedor(id)
);

CREATE TABLE estoque (
    id_estoque INT(11) PRIMARY KEY,
    id_produto INT(11) NOT NULL UNIQUE,
    quantidade INT(11) NOT NULL,
    quantidade_minima INT(11) NOT NULL,
    localizacao VARCHAR(100),
    FOREIGN KEY (id_produto) REFERENCES produto(id)
);

CREATE TABLE movimentacao_estoque (
    id_movime INT(11) PRIMARY KEY,
    id_produto INT(11) NOT NULL,
    tipo VARCHAR(10) NOT NULL,
    quantidade INT(11) NOT NULL,
    data DATE NOT NULL,
    FOREIGN KEY (id_produto) REFERENCES produto(id)
);