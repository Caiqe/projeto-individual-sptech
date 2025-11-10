-- SCRIPT INSERÇÕES
USE roteirando;
desc viagem;

select * from usuario;

INSERT INTO destino (nome, descricao, imagem_destino, link_maps, uf) VALUES
('Ubatuba', 'Cidade Litorânea no litoral norte de SP', 'teste', 'teste', 'SP');

INSERT INTO status VALUES
(default,'Andamento'),
(default,'Finalizada');

INSERT INTO viagem (id_viagem, fk_usuario,fk_destino, dtIda,fk_status) VALUES
(default,1,1,'2025-10-10',2);
select * from viagem;


SELECT * FROM viagem WHERE fk_usuario = 1 AND fk_status = 1;

