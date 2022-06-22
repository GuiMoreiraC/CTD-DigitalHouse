use musimundos;

-- 1. Os gerentes da Musimundos estão pensando em uma expansão nos negócios e
-- precisam saber quais são os clientes cadastrados na empresa.

select * from clientes;

-- Informe a quantidade de registros retornados na sua pesquisa.
select count(id) from clientes;

-- 2. Where y Order By #2 - Clientes dos Estados Unidos
-- Agora que temos os nomes dos clientes, precisamos que você obtenha apenas os
-- que são dos EUA.

select * 
from clientes
where pais like 'USA';

-- 3. Where y Order By #3 – Canções semi-largas
-- Vamos melhorar um pouco a seleção. O departamento de música pede um
-- relatório de músicas cuja duração seja entre 200.000 e 300.000 milissegundos.
-- Você se anima?

SELECT * FROM cancoes c
WHERE duracao_milisegundos BETWEEN 200000 AND 300000
ORDER BY duracao_milisegundos;

-- 4. Where y Order By #4 - Clientes que falam espanhol
-- URGENTE! Uma banda argentina acaba de lançar um álbum e nos pediu uma lista
-- de clientes que falam espanhol para que pudessem divulgar seu produto.
-- Solicitamos que obtenha uma lista de clientes cujo país de origem é a Espanha
-- ou a Argentina. Sorte neste desafio!

select * 
from clientes
where pais like 'Argentina' or pais like 'Spain';

-- Informe o nome do primeiro cliente listado.
SELECT *
from clientes
where pais like 'Argentina' or pais like 'Spain'
LIMIT 1;


-- 5. CTD-BD-C11A-SQL - Where y Order By #5 - Todos os géneros dos álbuns.
-- A Musimundos deseja adicionar uma lista com todos os gêneros aos quais seus
-- álbuns pertencem, mas classificados por nome em ordem alfabética.

SELECT nome FROM generos g
ORDER BY nome; 

-- 6. CTD-BD-C11A-SQL - Where y Order By #6 - Nomes de clientes ordenados
-- Os gerentes estão muito satisfeitos com seu trabalho! Mas as tarefas ainda não
-- acabaram.
-- Agora precisam de uma lista apenas com os nomes dos clientes da Musimundos,
-- ordenados por país de origem (decrescente) e, como segundo parâmetro, por
-- cidade. Está preparado?

SELECT nome, sobrenome, pais ,cidade  
FROM clientes
ORDER BY pais, cidade;

-- Adicionar | Limit e Offset










