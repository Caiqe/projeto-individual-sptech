-- SCRIPT INSERÇÕES
USE roteirando;

INSERT INTO usuario VALUES
(default, 'admin', 'admin@admin.com', '12345678', 'São Paulo', 'SP', null);


INSERT INTO destino (nome, descricao, imagem_destino, uf, regiao) VALUES
('Rio de Janeiro','O Rio de Janeiro oferece uma vasta gama de praias, desde as mais famosas e agitadas como Copacabana e Ipanema, com sua infraestrutura e vida cultural, até praias mais tranquilas e exclusivas como Leblon e Joatinga.','https://ik.imagekit.io/ix39wusls/paisagens/rioDeJaneiro.webp?updatedAt=1763321843540','RJ','Sudeste'),
('Búzios','Armação dos Búzios, ou apenas Búzios, como é popularmente conhecido, é um município brasileiro situado na Região dos Lagos do estado do Rio de Janeiro.','https://ik.imagekit.io/ix39wusls/paisagens/buzios.jpg?updatedAt=1763321894607','RJ','Sudeste'),
('Ilhabela','Ilhabela é um dos únicos municípios–arquipélagos marinhos brasileiros, estando localizado no litoral norte do estado de São Paulo. O arquipélago é composto por 19 ilhas, ilhotes e lajes.','https://ik.imagekit.io/ix39wusls/paisagens/ilhaBela.jpg?updatedAt=1763321820744','SP','Sudeste'),
('Arraial d’Ajuda','Arraial dAjuda é um distrito do município brasileiro de Porto Seguro, no litoral do estado da Bahia. A pequena vila se caracteriza pelas suas praias paradisíacas, natureza exuberante e construções com um estilo único.','https://ik.imagekit.io/ix39wusls/paisagens/arraialDaAjuda.jpg?updatedAt=1763322015263','BA','Nordeste'),
('Natal','Natal é um município brasileiro, capital do estado do Rio Grande do Norte, na Região Nordeste do país.','https://ik.imagekit.io/ix39wusls/paisagens/natal.jpeg?updatedAt=1763321724775','RN','Nordeste'),
('Florianópolis','Florianópolis, conhecido coloquialmente como Floripa, é um município brasileiro, capital do estado de Santa Catarina, localizada na Região Sul do país. Florianópolis é também apelidado de "Ilha da Magia", decorrente de seus folclóricos contos e histórias de bruxas e criaturas mágicas que habitam na ilha, popularizados pelo escritor Franklin Cascaes.','https://ik.imagekit.io/ix39wusls/paisagens/florianopolis.jpg?updatedAt=1763321950274','SC','Sul'),
('Bombinhas','É o menor município de Santa Catarina, com uma área de 34,5 km². Tem diversas praias como Bombas, Bombinhas (Centro), Zimbros, Canto Grande, Conceição, Ribeiro, Mariscal, Praia da Sepultura, Praia do Retiro dos Padres e Praia de Quatro Ilhas.','https://ik.imagekit.io/ix39wusls/paisagens/bombinhas.jpg?updatedAt=1763322314504','SC','Sul'),
('Laguna','Laguna é uma cidade litorânea localizada no sul de Santa Catarina, conhecida por suas belas praias, paisagens naturais e rica importância histórica. Fundada em 1676, é uma das cidades mais antigas do estado.','https://ik.imagekit.io/ix39wusls/paisagens/laguna.jpg?updatedAt=1763322251768','SC','Sul'),
('Arraial do Cabo ','Arraial do Cabo é um município brasileiro situado na Região dos Lagos do estado do Rio de Janeiro.','https://ik.imagekit.io/ix39wusls/paisagens/arraialDoCabo.jpg?updatedAt=1763321929670','RJ','Sudeste'),
('Ubatuba','Ubatuba, oficialmente Estância Balneária de Ubatuba, é um município brasileiro do estado de São Paulo. Localizada na Mesorregião do Vale do Paraíba Paulista e na Microrregião de Caraguatatuba, trata-se de uma estância balneária cujo território ocupa uma área de 708,105km², sendo 83% coberto pelo Parque Estadual da Serra do Mar.','https://ik.imagekit.io/ix39wusls/paisagens/arraialDaAjuda.jpg?updatedAt=1763322015263','SP','Sudeste'),
('Porto Seguro','Porto Seguro (região inicialmente chamada Nhoesembé) é um município brasileiro no litoral do estado da Bahia, Região Nordeste do país.Foi, com os municípios limítrofes de Santa Cruz Cabrália e Prado, o local de chegada dos portugueses ao Brasil em 1500. ','https://ik.imagekit.io/ix39wusls/paisagens/portoSeguro.jpg?updatedAt=1763321985928','BA','Nordeste'),
('Porto de Galinhas','Porto de Galinhas é uma praia localizada no distrito homônimo, pertencente ao município de Ipojuca, no estado de Pernambuco, Brasil. A região possui piscinas de águas claras e mornas formadas entre corais, além de estuários, mangues, areia branca e coqueirais.','https://ik.imagekit.io/ix39wusls/paisagens/portoDeGalinhas.webp?updatedAt=1763321867638','PE','Nordeste'),
('Jericoacoara','Jericoacoara é uma praia localizada na vila homônima, no município de Jijoca de Jericoacoara, no estado do Ceará, no Brasil. Foi eleita em 1994 pelo jornal estadunidense The Washington Post uma das dez praias mais bonitas do planeta.','https://ik.imagekit.io/ix39wusls/paisagens/jericoacoara.jpg?updatedAt=1763321721555','CE','Nordeste'),
('Balneário Camboriú','Balneário Camboriú é um município brasileiro localizado no litoral norte do estado de Santa Catarina, Região Sul do país. Pertence à Região Metropolitana da Foz do Rio Itajaí e encontra-se a cerca de 80 km da capital do estado, Florianópolis.','https://ik.imagekit.io/ix39wusls/paisagens/balnearioCamboriu.jpg?updatedAt=1763321969973','SC','Sul'),
('Torres','Torres é um município brasileiro situado no extremo norte do litoral atlântico do estado do Rio Grande do Sul. A paisagem da cidade se destaca por ser a única praia do Rio Grande do Sul em que sobressaem paredões rochosos à beira-mar, e por ter à sua frente a única ilha marítima do estado, a Ilha dos Lobos.','https://ik.imagekit.io/ix39wusls/paisagens/torres.jpg?updatedAt=1763322471283','RS','Sul');


INSERT INTO status VALUES
(default,'Andamento'),
(default,'Finalizada');




