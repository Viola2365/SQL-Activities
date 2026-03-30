/*
Resolva os exercícios abaixo:
*/
-- 1) Crie o banco de Dados Locadora e coloque-o em uso

create database locadora
use locadora

/* 2) Crie as seguintes tabelas:
tbClientes(
	CodCli inteiro, -chave primária 
	Nome texto(50), 
	Endereco texto(50),
	Cidade  texto(50),
	Sexo caracter(1),
	Datanasc datahora,
	CNH texto(25),
	DataHabilitacao data,
)

tbCarros (
	CodCarro inteiro, -chave primária
	Marca texto(30),
	Modelo texto(30),
	Placa texto(8),
	ValorDiaria moeda,
	Fornecedor texto(50),
)

tbAluguel(
	CodAluguel inteiro, -chave primária
	CodCli inteiro, 
	CodCarro inteiro,
	DataRet datahora,
	DataDev datahora,
	ValorPago moeda
)
*/
create table tbClientes(
	CodCli int PRIMARY KEY,
	Nome varchar(50), 
	Endereco varchar(50),
	Cidade  varchar(50),
	Sexo char(1),
	Datanasc datetime,
	CNH char(25),
	DataHabilitacao date,
)
create table tbCarros (
	CodCarro int PRIMARY KEY,
	Marca varchar(30),
	Modelo varchar(30),
	Placa char(8),
	ValorDiaria money,
	Fornecedor varchar(50),
)
create table tbAluguel (
	CodAluguel int PRIMARY KEY,
	CodCli int, 
	CodCarro int,
	DataRet datetime,
	DataDev datetime,
	ValorPago money
)

-- 3) Acrescentar o campo Estado (caracter 2) na tabela de Clientes

alter table tbClientes add Estado char(2)

-- 4) Acrescentar o campo Categoria (texto 30) na tabela de Carros

alter table tbCarros add Categoria varchar(30)

-- 5) Acrescentar o campo Cor (texto 20) na tabela de Carros

alter table tbCarros add Cor varchar(20)

-- 6) Remova o campo DataHabilitacao da tabela de Clientes

alter table tbClientes drop column DataHabilitacao

-- 7) Remova o campo Fornecedor da tabela de Carros

alter table tbCarros drop column Fornecedor 

-- 8) Renomeie o campo DataRet da tabela tbAluguel para DataRetirada

EXEC sp_rename 'tbAluguel.DataRet', 'DataRetirada', 'COLUMN';

-- 9) Renomeie o campo DataDev da tabela tbAluguel para DataDevolucao

EXEC sp_rename 'tbAluguel.DataDev', 'DataDevolucao', 'COLUMN';

-- 10) Renomeie o campo Nome da tabela tbClientes para NomeCliente

EXEC sp_rename 'tbClientes.Nome', 'NomeCliente', 'COLUMN';


