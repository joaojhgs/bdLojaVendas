/*LINK GITHUB: https://github.com/joaojhgs/bdLojaVendas */
CREATE DATABASE IF NOT EXISTS bdLojaVendas;
use bdLojaVendas;
DROP TABLE IF EXISTS Produtos_Venda;
DROP TABLE IF EXISTS VENDAS;
DROP TABLE IF EXISTS VENDEDORES;
DROP TABLE IF EXISTS ADM;
DROP TABLE IF EXISTS EnderecoFuncionarios;
DROP TABLE IF EXISTS FUNCIONARIOS;
DROP TABLE IF EXISTS FILIAIS;
DROP TABLE IF EXISTS EnderecoClientes;
DROP TABLE IF EXISTS CLIENTES;
DROP TABLE IF EXISTS PRODUTOS;
DROP TABLE IF EXISTS CuponsAplicaveis;
DROP TABLE IF EXISTS MARCAS;
DROP TABLE IF EXISTS CUPONS;


CREATE TABLE FILIAIS(
ID integer primary key, 
CapMax integer, 
Local_N varchar(50));

/*Generalização + relação de pertencimento a filiais*/
CREATE TABLE FUNCIONARIOS(
CPF varchar(11) primary key, 
NOME varchar(100), 
CTPS varchar(11), 
ID integer, 
IdFilial integer, 
foreign key (IdFilial) references FILIAIS(ID));

/*Especialização + relação gerencia filial*/
CREATE TABLE ADM(
SalarioFixo integer, 
HorasExtra integer, 
Bonus integer, 
FuncionarioCPF varchar(11) primary key, 
foreign key (FuncionarioCPF) references FUNCIONARIOS(CPF), 
FilialID integer, foreign key(FilialID) references FILIAIS(ID));


/*Cupons Aplicaveis descreve a relação "aplicavel" de N para N entre marcas e cupons*/
CREATE TABLE MARCAS(
ID integer primary key, 
Nome varchar(100), 
Contato varchar(30));

CREATE TABLE CUPONS(
ID integer primary key, 
Valor integer, 
UsoMax integer);

/*Especialização*/
CREATE TABLE VENDEDORES(
SalarioBase integer, 
comissao integer, 
meta integer, 
FuncionarioCPF varchar(11) primary key, 
foreign key (FuncionarioCPF) references FUNCIONARIOS(CPF));

CREATE TABLE CLIENTES(
CPF varchar(11) primary key, 
Nome varchar(50), 
Contato varchar(30));

/*Descreve a relação de pertencimento de produtos à marcas 1.1 e 1..N*/
CREATE TABLE PRODUTOS(
ID integer primary key, 
Nome varchar(50), 
Valor integer, 
Desconto integer, 
Estoque integer, 
MarcaID integer not null, 
foreign key (MarcaID) references MARCAS(id));

/*Cria as relacoes com cliente e vendedores utilizando foreign key not null (Obrigatorio haver no minimo um 1 e maximo 1 cliente e vendedor por venda)*/
/*Cria uma table para descrever a relação 1..N para 0..N entre Produtos e venda*/
CREATE TABLE VENDAS(
ID integer primary key, 
ValTotal integer, 
Data_V integer, 
CPFVendedor varchar(11) not null, 
CPFCliente varchar(11) not null, 
foreign key (CPFVendedor) references VENDEDORES(FuncionarioCPF),
foreign key (CPFCliente) references CLIENTES(CPF)
);

CREATE TABLE Produtos_Venda(
ProdutoID integer not null, 
VendaID integer, 
foreign key(ProdutoID) references PRODUTOS(ID), 
foreign key(VendaID) references VENDAS(ID));

/*Descreve a relação N para N de aplicabilidade de cupons e marcas*/
CREATE TABLE CuponsAplicaveis(
MarcaID integer, 
CuponID integer, 
foreign key (MarcaID) references MARCAS(ID), 
foreign key (CuponID) references CUPONS(ID), 
primary key (CuponID, MarcaID));

/*As duas tabelas abaixo descrevem entidades fracas de endereco de Funcionarios e clientes respectivamente*/
CREATE TABLE EnderecoFuncionarios(PAIS varchar(30), 
ESTADO varchar(30), 
CIDADE varchar(30), 
RuaAv varchar(100), 
NUMERO integer, 
CEP integer, 
FuncionarioCPF varchar(11), 
foreign key (FuncionarioCPF) references FUNCIONARIOS(CPF) on delete cascade, 
primary key (CEP, FuncionarioCPF));

CREATE TABLE EnderecoClientes(PAIS varchar(30), 
ESTADO varchar(30), 
CIDADE varchar(30), 
RuaAv varchar(100), 
NUMERO integer, 
CEP varchar(8), 
ClienteCPF varchar(11), 
foreign key (ClienteCPF) references CLIENTES(CPF) on delete cascade, 
primary key (CEP, ClienteCPF));

show tables;