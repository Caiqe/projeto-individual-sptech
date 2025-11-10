-- SCRIPT ROTEIRANDO 
-- TIRE OS COMENTARIOS DA LINHA ABAIXO SE FOR A PRIMEIRA EXECUÇÃO
-- CREATE DATABASE roteirando;
USE roteirando;

-- CRIAÇÃO DE TABELAS
CREATE TABLE usuario 
(
id_usuario INT PRIMARY KEY AUTO_INCREMENT,
nome VARCHAR(50) NOT NULL,
email VARCHAR(50) UNIQUE NOT NULL,
senha VARCHAR(45) NOT NULL,
cidade VARCHAR(45),
uf CHAR(2),
imagem_perfil VARCHAR(255)
);


INSERT INTO usuario VALUES
(default, 'admin', 'admin@admin.com', '12345678', 'São Paulo', 'SP', null);

CREATE TABLE destino 
(
id_destino INT PRIMARY KEY AUTO_INCREMENT,
nome VARCHAR(45),
descricao VARCHAR(150),
imagem_destino VARCHAR(255),
link_maps VARCHAR(400),
uf CHAR(2)
);

CREATE TABLE status 
(
id_status INT PRIMARY KEY AUTO_INCREMENT,
titulo VARCHAR(10)
);

CREATE TABLE viagem
(
id_viagem INT, 
fk_usuario INT,
FOREIGN KEY (fk_usuario)
	REFERENCES usuario(id_usuario),
fk_destino INT,
FOREIGN KEY (fk_destino)
	REFERENCES destino(id_destino),
dtIda DATE NOT NULL,
dtVolta DATE, 
meta_orcamento DECIMAL(8,2),
orcamento_arrecadado DECIMAL(8,2),
fk_status INT NOT NULL,
FOREIGN KEY (fk_status)
	REFERENCES status(id_status),
PRIMARY KEY (id_viagem, fk_usuario, fk_destino)
);
desc destino;
