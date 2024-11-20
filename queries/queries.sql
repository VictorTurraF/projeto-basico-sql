
USE newsletter;

SELECT * FROM inscritos WHERE idade > 30;

-- Listando todos os inscritos
SELECT * FROM inscritos;
SELECT nome as `Nome Completo`, email as Contato FROM inscritos;

-- Listando apenas colunas especificas
SELECT nome, email FROM inscritos;

SELECT * FROM inscritos LIMIT 5;

SELECT * FROM inscritos LIMIT 5 OFFSET 10;


-- Limitar Resultados e Paginação: Listar os primeiros 5 inscritos
SELECT * FROM inscritos LIMIT 10 OFFSET 0;
SELECT * FROM inscritos LIMIT 10 OFFSET 10;
SELECT * FROM inscritos LIMIT 10 OFFSET 20;

-- Listar inscritos apenas com idade maior que trinta
SELECT * FROM inscritos where idade > 30;
-- Plus: Listar inscritos com idade maior ou igual a trinta
SELECT * FROM inscritos where idade >= 30;

SELECT * FROM inscritos where idade <> 30;
SELECT * FROM inscritos where idade != 30;

SELECT * FROM inscritos WHERE idade > 30 AND sexo = 'F';

SELECT * FROM inscritos WHERE idade < 25 OR (sexo = 'F' AND idade < 30);

-- Plus: Listar inscritos específicos (por nome):
SELECT * FROM inscritos WHERE nome = 'Alice';

-- Plus: Listar inscritos que se inscreveram depois de uma data específica:
SELECT * FROM inscritos WHERE data_inscricao > '2024-03-01';

-- Plus: Listar apenas inscritos mulheres
SELECT * FROM inscritos WHERE sexo = "F";

-- Listando inscritos com um domínio de email específico
SELECT * 
FROM inscritos
WHERE email LIKE '%@gmail.com';

-- Atualização de Dados: Atualizar o e-mail de um assinante:
UPDATE inscritos
SET email = 'novoemail@example.com'
WHERE id = 1;

UPDATE inscritos
SET email = 'laurie@example.com',
	idade = 33
WHERE 
	id = 2;

-- Exclusão de Assinantes: Cancelar a inscrição de um assinante (remover)
DELETE FROM inscritos WHERE id = 3;

-- Cuidado, exclui todos os registros
DELETE FROM inscritos;