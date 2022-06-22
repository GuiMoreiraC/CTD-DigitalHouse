-- Where

-- 1. Exiba os nomes dos produtos que possuem qualquer combinação de
-- ‘spread’.
-- Tabela: Produtos
-- Campo: ProdutoNome

SELECT p.ProdutoNome FROM Produtos p
WHERE p.ProdutoNome LIKE '%spread%';

-- 2. Mostre os contatos  cujos nomes começam com a letra "Y"
-- Tabela: clientes
-- Campo: contato

SELECT c.Contato  FROM Clientes c
WHERE c.Contato LIKE 'y%';

-- Order by

-- 1. Mostre cinco produtos mais caros e seus nomes em ordem decrescente
-- Tabela: produtos
-- Campos: ProdutoNome, PrecoUnitario

SELECT p.ProdutoNome, p.PrecoUnitario FROM Produtos p
ORDER BY p.PrecoUnitario DESC
LIMIT 5;

-- Operadores & joins

-- 1. Mostre o contato, o  endereço concatenado com a cidade dos clientes cuja cidade é ‘London’
-- Tabela: clientes
-- Campos: Contato, Endereco, Cidade

SELECT c.Contato, CONCAT(c.Endereco, ', ',c.Cidade) as Endereco 
FROM Clientes c
WHERE c.Cidade LIKE 'London';


-- 2. Concatene o nome  e o sobrenome dos empregados e mostre a soma dos valores em Transporte para cada um. Ordene os valores de forma decrescente.
-- Tabelas: empregados, faturas
-- Campos: nome, sobrenome, transporte

SELECT CONCAT(e.Nome, ' ', e.Sobrenome) as nomeEmpregado,
SUM(f.Transporte) as somaTransporte
FROM Faturas f
INNER JOIN Empregados e
ON e.EmpregadoID = f.EmpregadoID
GROUP BY e.EmpregadoID, f.EmpregadoID
ORDER  BY somaTransporte DESC;


-- Funções de agregação

-- 1. Mostre a data da fatura mais recente
-- Tabela: faturas
-- Campo: DataFatura

SELECT f.DataFatura  FROM Faturas f
ORDER BY f.DataFatura DESC
LIMIT 1;

-- 2. Mostre o produto mais barato
-- Tabelas: produtos
-- Campos: ProdutoNome, PrecoUnitario


SELECT p.ProdutoNome, p.PrecoUnitario FROM Produtos p
ORDER BY p.PrecoUnitario
LIMIT 1;

-- Join e Group by

-- 1. Mostre o  nome dos produtos, o valor unitário,  a quantidade e o total vendido por produto.
-- Tabelas: detalhefaturas e produtos
-- Campos: ProdutoNome, ValorUnitario e Quantidade

SELECT p.ProdutoNome, SUM(df.Quantidade * df.PrecoUnitario) as totalvendido
FROM DetalheFatura df
INNER JOIN Produtos p
ON p.ProdutoID = df.ProdutoID
GROUP BY p.ProdutoID, df.ProdutoID ;

-- Having

-- 1. Mostre o  nome dos produtos, o valor unitário,
-- a quantidade e o total vendido por produto.
-- Liste apenas os dados dos produtos que venderam
-- mais de 40 unidades.
-- Tabelas: detalhefaturas e produtos
-- Campos: ProdutoNome, ValorUnitario e Quantidade

SELECT p.ProdutoNome,SUM(df.Quantidade * df.PrecoUnitario) as totalvendido
FROM DetalheFatura df
INNER JOIN Produtos p
ON p.ProdutoID = df.ProdutoID
GROUP BY p.ProdutoID, df.ProdutoID
HAVING SUM(df.Quantidade) >= 40;

--   Índices

-- 1. Exiba os índices existentes na tabela produtos;
-- 2. Exclua o índice Produtos_ProdutoNome da tabela Produtos;
-- 3. Crie uma consulta que traga os campos ProdutoNome da 
-- tabela produtos,  ProdutoID, PrecoUnitario e Quantidade da
-- tabela detalhefatura. Observe o tempo de duração da consulta.
-- 4. Crie o índice Produtos_ProdutoNome no campo ProdutoNome
-- da tabela produtos e repita a consulta do item 3.
-- Observe o tempo de duração da consulta.
-- Houve alguma diferença? Descreva o que você observou.




















