USE musimundos;

-- Utilizando a base de dados musimundos_v2, na tabela faturas crie as procedures:

-- 1) Crie uma procedure que selecione o valor da fatura com o valor mais baixo.
DROP PROCEDURE IF EXISTS musimundos.menorFatura;

DELIMITER $$
$$
CREATE PROCEDURE musimundos.menorFatura () 
BEGIN 
	SELECT valor_total 
		FROM faturas 
		ORDER BY valor_total 
	LIMIT 1; 
END$$
DELIMITER ;

-- CALL menorFatura;


-- 2) Crie uma procedure que retorna a quantidade de faturas que tem o país de cobrança como “Canada”.
DROP PROCEDURE IF EXISTS musimundos.qtCanada;

DELIMITER $$
$$
CREATE PROCEDURE musimundos.qtCanada()
BEGIN
		SELECT COUNT(id) as quantidadeFaturas
		FROM faturas
		WHERE pais_cobranca LIKE '%Canada%';
END$$
DELIMITER ;


-- CALL qtCanada;

-- 3) Uma procedure que retorna o valor somado de todas as faturas.
DROP PROCEDURE IF EXISTS musimundos.somaFaturas;

DELIMITER $$
$$
CREATE PROCEDURE musimundos.somaFaturas()
BEGIN
		SELECT SUM(valor_total) as somaFaturas
		FROM faturas;
END$$
DELIMITER ;

-- CALL somaFaturas;

-- 4) Uma procedure que retorna o valor médio de todas as faturas.
DROP PROCEDURE IF EXISTS musimundos.mediaFaturas;

DELIMITER $$
$$
CREATE PROCEDURE musimundos.mediaFaturas()
BEGIN
		SELECT AVG(valor_total) as mediaFaturas
		FROM faturas;
END$$
DELIMITER ;

-- CALL mediaFaturas;


-- Utilizando a base de dados musimundos_v2, na tabela cancoes crie as procedures:

-- 1) Crie uma procedure que retorna o tamanho em bytes e a duração de uma canção pelo seu id.
DROP PROCEDURE IF EXISTS musimundos.cacaoBytes;

DELIMITER $$
$$
CREATE PROCEDURE musimundos.cacaoBytes(id_cacao INT) 
BEGIN
		SELECT c.bytes  
		FROM cancoes c
		WHERE c.id = id_cacao;
END$$
DELIMITER ;

-- CALL cacaoBytes(7);

-- 2) Crie uma procedure que retorna o preço unitário uma canção pelo seu id.
DROP PROCEDURE IF EXISTS musimundos.precoCacao;

DELIMITER $$
$$
CREATE PROCEDURE musimundos.precoCacao(id_cacao INT) 
BEGIN
		SELECT c.preco_unitario
		FROM cancoes c
		WHERE c.id = id_cacao;
END$$
DELIMITER ;

-- CALL precoCacao(2);

-- 3) Crie uma procedure que retorna o id da canção, o nome da canção e o tipo
-- de arquivo(table tipos_de_arquivo) desta canção á partir de um id da
-- canção informado.
DROP PROCEDURE IF EXISTS musimundos.consultaCacao;

DELIMITER $$
$$
CREATE PROCEDURE musimundos.consultaCacao(id_cacao INT) 
BEGIN
		SELECT c.id, c.nome, tda.nome
		FROM cancoes c
		INNER JOIN tipos_de_arquivo tda
		ON c.id_tipo_de_arquivo = tda.id
		WHERE c.id = id_cacao;
END$$
DELIMITER ;

-- CALL consultaCacao(2);




-- Utilizando a base de dados musimundos_v2, na tabela clientes crie as
-- procedures:


-- 1) Crie uma procedure que retorna o nome e sobrenome concatenados e
-- também o email de todos os clientes.
DROP PROCEDURE IF EXISTS musimundos.listaClientes;

DELIMITER $$
$$
CREATE PROCEDURE musimundos.listaClientes() 
BEGIN
		SELECT CONCAT(c.nome,' ' , c.sobrenome) nomeCompleto, c.email
		FROM clientes c;
END$$
DELIMITER ;

-- CALL listaClientes();

-- 2) Crie uma procedure que retorna o nome completo (nome e sobrenome
-- concatenados) e também o endereço completo (endereço, cidade, estado
-- e país) de um cliente pelo id informado.
DROP PROCEDURE IF EXISTS musimundos.listaClientesEnd;

DELIMITER $$
$$
CREATE PROCEDURE musimundos.listaClientesEnd( id_cliente INT) 
BEGIN
		SELECT CONCAT(c.nome,' ' , c.sobrenome) nomeCompleto,
		CONCAT(c.endereco, ', ' , c.cidade, ' - ' , c.pais) endereco
		FROM clientes c
		WHERE c.id = id_cliente;
END$$
DELIMITER ;

-- CALL listaClientesEnd(3);

-- 3) Crie uma procedure que retorna o nome do cliente e o valor total de cada
-- uma das suas faturas pelo id do cliente informado.
DROP PROCEDURE IF EXISTS musimundos.valorTotalCliente;

DELIMITER $$
$$
CREATE PROCEDURE musimundos.valorTotalCliente( id_cliente INT) 
BEGIN
		SELECT c.nome, SUM(f.valor_total)
		FROM clientes c
		INNER JOIN faturas f
		ON c.id = f.id_cliente
		WHERE c.id = id_cliente
		GROUP BY c.id, f.id_cliente;
END$$
DELIMITER ;

-- CALL valorTotalCliente(3);



