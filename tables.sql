-- Aqui você deve colocar os códigos SQL referentes à

-- Criação das tabelas

-- Tabela clientes
CREATE TABLE IF NOT EXISTS clientes(
id BIGSERIAL PRIMARY KEY,
nome VARCHAR(50) NOT NULL,
lealdade INTEGER NOT NULL);
-- Tabela endereços
CREATE TABLE IF NOT EXISTS enderecos(
id BIGSERIAL PRIMARY KEY,
cep VARCHAR(9)NOT NULL,
rua VARCHAR(50) NOT NULL,
numero INTEGER NOT NULL,
bairro VARCHAR(50) NOT NULL,
complemento VARCHAR(100),
cliente_id INTEGER UNIQUE NOT NULL,
FOREIGN KEY(cliente_id)
REFERENCES  clientes(id)
ON DELETE CASCADE
);
-- Tabela pedidos

-- Tabela produtos

-- Tabela produtos_pedidos

