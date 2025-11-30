use roteirando;

UPDATE viagem SET fk_status = 2 WHERE id_viagem = 1;

-- SELECT KPIS

SELECT v.dtIda, d.nome, (v.meta_orcamento-v.orcamento_arrecadado) as faltante 
FROM viagem v 
JOIN destino d ON d.id_destino = v.fk_destino
WHERE v.fk_usuario = 1 AND v.fk_status = 1;

-- SELECT GRÁFICOS
CREATE VIEW vw_dados_graficos_geral as 
SELECT d.regiao, COUNT(v.id_viagem) as num_visitas, SUM(v.meta_orcamento) soma_orcamentos FROM viagem v
RIGHT JOIN destino d ON d.id_destino = v.fk_destino
GROUP BY d.regiao
ORDER BY d.regiao;


select * from vw_dados_graficos_geral;


