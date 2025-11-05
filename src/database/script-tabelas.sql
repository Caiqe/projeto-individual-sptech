-- SCRIPT ROTEIRANDO 
-- TIRE OS COMENTARIOS DA LINHA ABAIXO SE FOR A PRIMEIRA EXECUÇÃO
CREATE DATABASE roteirando;
USE roteirando;

-- CRIAÇÃO DE TABELAS
CREATE TABLE usuario 
(
id INT PRIMARY KEY AUTO_INCREMENT,
nome VARCHAR(50) NOT NULL,
email VARCHAR(50) UNIQUE NOT NULL,
senha VARCHAR(45) NOT NULL,
cidade VARCHAR(45),
uf CHAR(2),
imagem_perfil VARCHAR(255)
);
INSERT INTO usuario VALUES
(default, 'admin', 'admin@admin.com', '12345678', 'São Paulo', 'SP', null);
SELECT * FROM usuario;

CREATE TABLE destino 
(
id_destino INT PRIMARY KEY AUTO_INCREMENT,
nome VARCHAR(45),
descricao VARCHAR(150),
imagem_destino VARCHAR(255),
link_maps VARCHAR(400),
uf CHAR(2)
);
