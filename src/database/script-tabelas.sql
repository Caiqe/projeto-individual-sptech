-- SCRIPT ROTEIRANDO 
-- TIRE OS COMENTARIOS DA LINHA ABAIXO SE FOR A PRIMEIRA EXECUÇÃO
 CREATE DATABASE roteirando;
USE roteirando;

select v.id_viagem, v.dtIda, v.dtVolta, d.nome, d.uf, d.imagem_destino, s.titulo from viagem v
JOIN destino d on d.id_destino = v.fk_destino
JOIN status s on s.id_status = v.fk_status
WHERE v.fk_usuario = 1;

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


CREATE TABLE destino 
(
id_destino INT PRIMARY KEY AUTO_INCREMENT,
nome VARCHAR(45),
descricao VARCHAR(400),
imagem_destino VARCHAR(255),
uf CHAR(2),
regiao VARCHAR(8),
	CONSTRAINT chkRegiao
		CHECK (regiao IN ('Sul','Sudeste','Nordeste'))
);

CREATE TABLE status 
(
id_status INT PRIMARY KEY AUTO_INCREMENT,
titulo VARCHAR(10)
);

CREATE TABLE viagem
(
id_viagem INT AUTO_INCREMENT, 
fk_usuario INT,
FOREIGN KEY (fk_usuario)
	REFERENCES usuario(id_usuario),
fk_destino INT,
FOREIGN KEY (fk_destino)
	REFERENCES destino(id_destino),
dtIda DATE NOT NULL,
dtVolta DATE NOT NULL, 
meta_orcamento DECIMAL(8,2),
orcamento_arrecadado DECIMAL(8,2),
fk_status INT NOT NULL,
FOREIGN KEY (fk_status)
	REFERENCES status(id_status),
PRIMARY KEY (id_viagem, fk_usuario, fk_destino),
anotacao VARCHAR(500)
);


