CREATE TABLE funcionario(

codigo int(4) AUTO_INCREMENT,
nome varchar(30) NOT NULL,
cpf varchar(50),
data_nasc char(100),
celular varchar(19),
codigo_endereco int(20),
CONSTRAINT fk_FuncEnd FOREIGN KEY (codigo_endereco) REFERENCES endereco (cod),
PRIMARY KEY (codigo)
);


CREATE TABLE endereco(
cod int(20),
rua char(30),
cidade char(30),
numero int(20),
estado char(20),
PRIMARY KEY (cod)
);


insert into funcionario (nome, cpf, data_nasc, celular) values ("Gustavo NOgueira", "123.123.123-12", "04/07/2003", "42 49902-8922");
select * from funcionario;

select * from funcionario where nome = "Gustavo Nogueira";


CREATE TABLE planta(
codigo int(4) AUTO_INCREMENT,
nome varchar(30) NOT NULL,
nome_cientifico varchar(30),
porte varchar(30),
cor varchar(30),
data_manu varchar(30),
virar_produto boolean,
data_colhimento varchar(30),
cod_func int (20),
CONSTRAINT fk_PlaFun FOREIGN KEY (cod_func) REFERENCES funcionario(codigo),
PRIMARY KEY (codigo)
 );
select * from planta;

CREATE TABLE item_venda(
cod int(20),
quantidade int(20),
PRIMARY KEY(cod)
);

select * from item_venda;

INSERT INTO item_venda values (1, 3);

select * from venda;

INSERT INTO venda values (1, "12/12/1222", "cartao", false, 1);

CREATE TABLE entrega(
cod int(20),
data_entrega varchar(20),
foi_entregue boolean,
id_cliente int(20),
id_funcionario int(20),
CONSTRAINT fk_EnCli FOREIGN KEY (id_cliente) REFERENCES cliente (codigo),
CONSTRAINT fk_EnFunc FOREIGN KEY (id_funcionario) REFERENCES funcionario (codigo),
PRIMARY KEY(cod)
);

CREATE TABLE estoque(
cod int(20),
numero_estocamento int(20),
data_manutencao varchar(20),
data_reposicao varchar(20),
cod_prod int (20),
CONSTRAINT fk_EstPro FOREIGN KEY (cod_prod) REFERENCES produto(cod),
PRIMARY KEY (cod)
);

CREATE TABLE produto(

cod int (20),
valor float,
nome varchar(30),
lote int,
data_de_validade varchar(20),
mensagem varchar(30),
descrição varchar (30),
cod_planta int(20),
CONSTRAINT fk_PropLA FOREIGN KEY (cod_planta) REFERENCES planta (codigo),
PRIMARY KEY (cod)
);

CREATE TABLE cliente(
codigo int(4) AUTO_INCREMENT,
nome varchar(30) NOT NULL,
cpf varchar(50),
data_nasc char(10),
celular varchar(30),
codigo_endereco int(20),
CONSTRAINT fk_CliEnd FOREIGN KEY (codigo_endereco) REFERENCES endereco (cod),
PRIMARY KEY (codigo)
);

CREATE TABLE venda(
cod int(45),
datta varchar(30),
metodo_pag varchar(20),
entrega boolean,
id_item int(20),
id_cliente int(20),
id_funcionario int(20),
id_produto int(20),
PRIMARY KEY (cod),
CONSTRAINT fk_VenItem FOREIGN KEY (id_item) REFERENCES item_venda (cod),
CONSTRAINT fk_VenCli FOREIGN KEY (id_cliente) REFERENCES cliente (codigo),
CONSTRAINT fk_VenFunc FOREIGN KEY (id_funcionario) REFERENCES funcionario (codigo),
CONSTRAINT fk_VenPro FOREIGN KEY (id_produto) REFERENCES produto (cod)
);

insert into funcionario (nome, cpf, data_nasc, celular) values ("Gustavo NOgueira", "123.123.123-12", "04/07/2003", "42 49902-8922"),
("Bruno", "111", "17042003", "121212"), ("Isabelle", "123.123.123-12", "04/07/2003", "42 49902-8922");

select * from funcionario;
select * from funcionario where nome = "Gustavo Nogueira";
select * from funcionario where cpf = "111";

INSERT INTO planta (nome, nome_cientifico, porte, cor, data_manu, virar_produto, data_colhimento, cod_func) values ("Rosas", "Rosaceas", "Grande", "azul" ,"12/12/1222", true, "nunca", 2);

select * from planta where nome = "rosas";











