CREATE DATABASE fullcelulares
DEFAULT CHARACTER SET utf8
DEFAULT COLLATE utf8_general_ci;

USE fullcelulares;

CREATE TABLE produtos(
	idProd INT NOT NULL AUTO_INCREMENT,
	produto VARCHAR(45),
    descricao VARCHAR(255),
    preco INT,
    imagem VARCHAR(500),
	PRIMARY KEY(idProd)
) DEFAULT CHARACTER SET utf8;

CREATE TABLE pedidos (
	idPed INT NOT NULL AUTO_INCREMENT,
	cliente VARCHAR(55),
    endereco VARCHAR(255),
    tel INT(13),
    produto VARCHAR (55),
    valorUnit INT,
    quantidade ENUM('1','2','3','4','5','6','7','8','9','10') DEFAULT '1',
    valorTotal INT,
    PRIMARY KEY(idPed)
) DEFAULT CHARACTER SET utf8;

INSERT INTO produtos(produto, descricao, preco, imagem) VALUES(
	'Tijolão 3310','Nokia antigo', 39.90,'https://s2.glbimg.com/fyC0QV72cee07cKqHTs3f_ZFWi0=/0x0:695x401/984x0/smart/filters:strip_icc()/i.s3.glbimg.com/v1/AUTH_08fbf48bc0524877943fe86e43087e7a/internal_photos/bs/2017/9/4/j6fITqTW2nce3A8ZA3IQ/2-nokia-3310.jpg'
);
INSERT INTO produtos(produto, descricao, preco, imagem) VALUES
	('Siemens A40','Celular da Xuxa', 49.00,'https://i0.statig.com.br/bancodeimagens/0h/of/m4/0hofm4z7p9y3rmnosww584utb.jpg'),
    ('Sony ericsson W200','Clássico', 85.00,'https://i.pinimg.com/originals/d6/70/58/d6705868912fb608f3d034fe45d56869.jpg'),
    ('Celular V3','Motorola antigo', 70.00,'https://s2.glbimg.com/szlBsw3L1Z3ych87xOi4Gkn7D-I=/0x0:970x545/984x0/smart/filters:strip_icc()/i.s3.glbimg.com/v1/AUTH_08fbf48bc0524877943fe86e43087e7a/internal_photos/bs/2019/V/X/yqoE7TSfy5MlDFKDfZrw/aea7a675b1ae89200b3a8329f36e51d3-970-80.jpg'),
    ('StarTAC (1996)','Motorola antigo', 89.90,'https://t2.tudocdn.net/99817?w=1000&fit=clip'),
    ('Sony Ericsson W380','Modelo antigo', 93.70,'http://www.clubedainformatica.com.br/site/wp-content/uploads/2009/01/w380_2_product_quality_image_1.png'),
    ('C200 (2003)','Motorola antigo', 79.00,'https://t2.tudocdn.net/99810?w=1000&fit=clip'),
    ('Motorola Rokr E1 (2005)','Motorola antigo', 70.00,'https://tecnoblog.net/wp-content/uploads/2015/12/rokr-e1-1060x1289.jpg'),
    ('Celular Nokia 5200','Destaque entre os populares', 100.00,'https://http2.mlstatic.com/D_NQ_NP_962559-MLB32869338137_112019-O.webp');
    
INSERT INTO pedidos(cliente, endereco, tel, produto, valorUnit, quantidade, valorTotal) VALUES
('Marília Gabriela','Rua A n.255 - Bairro Santana', 21988888888,'Siemens A40', 49.00, 2, 98.00),
('Maisa Souza','Rua B n.355 - Bairro de Fátima', 21988888889,'StarTAC (1996)', 89.90, 1, 89.90),
('Lays Oliveira','Rua C n.555 - Bairro Bonsucesso', 21988888887,'C200 (2003)', 79.00, 2, 158.00),
('Gabriela Araujo','Rua D n.666 - Bairro Pavuna', 21988888886,'Motorola Rokr E1 (2005)', 70.00, 1, 70.00),
('Antonia Fulana','Rua E n.777 - Bairro Madureira', 21988888885,'Celular Nokia 5200', 100.00, 1, 100.00),
('João Pedro','Rua F n.888 - Bairro Cascadura', 21988888884,'Tijolão 3310', 39.90, 2, 79.8);

SELECT * FROM pedidos;
SELECT * FROM produtos;

DROP TABLE pedidos;

