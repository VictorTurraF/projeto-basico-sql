-- drop database newsletter;

-- Primeiro comando - Criando um banco de dados
CREATE DATABASE newsletter;

-- Utilizando um banco de dados
USE newsletter;

-- Bonus: Mostrar todos os bancos de dados disponíveis
SHOW DATABASES;

-- Exemplo de como o SQL não diferencia maiuscula de minuscula
ShOw DaTaBaSeS;

-- Criando a tabela
CREATE TABLE inscritos (
    id INT not NULL AUTO_INCREMENT,      -- Identificador único (será chave primária posteriormente)
    nome VARCHAR(100),          -- Nome do assinante
    email VARCHAR(100),         -- Email do assinante
    data_inscricao DATE DEFAULT (CURRENT_DATE),  -- Data da inscrição com valor padrão para o dia atual
    idade INT,                  -- Idade (restrição será adicionada depois)
    sexo ENUM('M', 'F'),         -- Sexo do assinante (Masculino ou Feminino)
    primary key (id)
);

-- Definindo coluna id como chave primaria
ALTER TABLE inscritos
	ADD PRIMARY KEY (id);

-- Definindo id como Unsigned (já que não há necessidade de id's negativos)
ALTER TABLE inscritos 
	MODIFY COLUMN id INT UNSIGNED;

-- Definindo o auto-incremento na coluna id
ALTER TABLE inscritos
	MODIFY id INT UNSIGNED AUTO_INCREMENT;

-- Definindo a coluna e-mail como unica
ALTER TABLE inscritos
	ADD CONSTRAINT unique_email UNIQUE (email);

ALTER TABLE inscritos
	MODIFY nome VARCHAR(100) NOT NULL,
	MODIFY email VARCHAR(150) NOT NULL,
	MODIFY data_inscricao DATE NOT NULL;

-- Valor padrão (data atual) na coluna data
ALTER TABLE inscritos
	MODIFY data_inscricao DATE DEFAULT (CURRENT_DATE);

-- Definindo regra de idade (ide)
ALTER TABLE inscritos 
ADD CONSTRAINT chk_idade CHECK (idade > 0);


-- Comando unico de alteração de tabela
ALTER TABLE inscritos 
    MODIFY id INT UNSIGNED AUTO_INCREMENT,   					-- Modificando a coluna 'id' para ser UNSIGNED e AUTO_INCREMENT
    MODIFY idade TINYINT UNSIGNED,            					-- Modificando a coluna 'idade' para ser TINYINT UNSIGNED
    MODIFY nome VARCHAR(100) NOT NULL,        					-- Modificando a coluna 'nome' para não aceitar valores nulos
    MODIFY email VARCHAR(150) NOT NULL,       					-- Modificando a coluna 'email' para não aceitar valores nulos
    MODIFY data_inscricao DATE NOT NULL DEFAULT (CURRENT_DATE), -- Modificando a coluna 'data_inscricao' para não aceitar nulos e ter valor padrão
    ADD PRIMARY KEY (id),                      					-- Adicionando a chave primária na coluna 'id'
    ADD CONSTRAINT idade_nao_negativa CHECK (idade > 0),  		-- Adicionando a restrição CHECK para a idade
    ADD CONSTRAINT email_unico UNIQUE (email); 					-- Adicionando a restrição UNIQUE para o email
    
-- Comando unico de criação de tabela
CREATE TABLE inscritos (
    id INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,   		    -- Identificador único, não negativo e auto-incrementado
    nome VARCHAR(70) NOT NULL,                   		    -- Nome do inscrito, não pode ser nulo
    email VARCHAR(50) NOT NULL UNIQUE,            		    -- Email do inscrito, não pode ser nulo e deve ser único
    data_inscricao DATE NOT NULL DEFAULT (CURRENT_DATE), 	-- Data da inscrição, não pode ser nula e tem valor padrão
    idade TINYINT UNSIGNED 	CHECK (idade > 0),      		-- Idade do inscrito, deve ser maior que 0 e não pode ser negativa
    sexo ENUM('M', 'F'),									-- Genero do inscrito podendo ser apenas 'M' ou 'F'.
);

-- Plus: Mostrar todas as tabelas de um banco de dados
SHOW TABLES;