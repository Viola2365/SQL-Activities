use Empresa
-- Lista sobre operadores

-- 01) Mostre o nome e o país dos clientes

-- 02) Mostre o nome e salário de todos os funcionarios que ganham acima de 7000

-- 03) Mostre o nome e salário de todos os funcionarios que ganham acima de 8000 e sejam dos EUA

-- 04) Exiba nome e salario dos funcionários e crie uma nova coluna somando 10% no salário

-- 05) Aumente em 5% todos os preços dos produtos

-- 06) Mostre o nome, salário e país somente dos funcionários que tenham salário entre 10000 e 11000 e sejam do Reino Unido

-- 07) Exiba nome, cidade dos clientes que não são dos EUA

-- 08) Exiba nome, cidade e contato dos clientes que são do Brasil

-- 09) Exiba os dados dos produtos que tenham preço acima de 10

-- 10) Exiba todos os produtos cujos preços estejam entre 10 e 15

select Nome, Pais from Clientes
--2)
select Nome, Salario from Funcionarios where Salario > 7000
--3)
select Nome, Salario from Funcionarios where Salario > 8000 and Pais = 'EUA'
--4)
SELECT Salario, Salario * 1.10 AS Salario_gamer FROM Funcionarios
--5)
update Produtos set Preco = Preco * 1.05
--6)
select Nome, Salario, Pais from Funcionarios where Salario between 10000 and 11000 and Pais = 'Reino Unido'
--7) 
select Nome, Cidade from Funcionarios where not Pais = 'EUA'
--8)
select Nome, Contato, Cidade from Clientes where  Pais = 'Brasil'
--9)
select * from Produtos where Preco > 10
--10)
select * from Produtos where Preco between 10 and 15