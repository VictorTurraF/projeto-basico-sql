# Projeto: Newsletter Database

Este projeto consiste na criação e manipulação de um banco de dados para gerenciar inscritos em uma newsletter. Ele foi desenvolvido como parte de um portfólio de projetos SQL, demonstrando habilidades em modelagem, criação, consulta e manipulação de dados em um banco relacional.

## 🚀 Tecnologias Utilizadas

- **Banco de Dados**: MySQL
- **SQL**: Structured Query Language para criação e manipulação de dados.

## 🛠️ Funcionalidades

1. **Criação de Banco de Dados**
   - Configuração de um banco chamado `newsletter`.
   - Criação e configuração da tabela `inscritos`.

2. **Estruturação de Dados**
   - Definição de colunas com restrições específicas:
     - `id`: Chave primária, numérica, não negativa e auto-incrementada.
     - `nome` e `email`: Obrigatórios, com validação de unicidade no email.
     - `idade`: Apenas valores positivos permitidos.
     - `sexo`: Aceita apenas os valores `'M'` ou `'F'`.
     - `data_inscricao`: Armazena a data de inscrição com um valor padrão da data atual.

3. **Operações CRUD**
   - Inserção de dados (um único registro ou múltiplos registros).
   - Atualização de dados existentes.
   - Exclusão de registros individuais ou em massa.

4. **Consultas SQL**
   - Filtragem de dados por condições específicas (idade, sexo, email, etc.).
   - Paginação de resultados com `LIMIT` e `OFFSET`.
   - Busca por padrões de email usando `LIKE`.
   - Consulta de registros baseados em datas.

5. **Validações e Regras de Negócio**
   - Restrições de integridade (unicidade, valores não nulos, check constraints).

## 📂 Estrutura do Projeto

- **`scripts.sql`**: Contém todos os comandos SQL utilizados no projeto.
- **`README.md`**: Documentação do projeto.
- **`sample_data.sql`**: Conjunto de dados de exemplo inseridos no banco.

## 📋 Pré-requisitos

1. **Instalação do MySQL**
   - Certifique-se de que o MySQL está instalado e configurado.
   - Para mais detalhes sobre como instalar, consulte a [documentação oficial do MySQL](https://dev.mysql.com/doc/).

2. **Ferramenta Cliente (Opcional)**
   - Recomendamos o uso do [DBeaver](https://dbeaver.io/) ou do MySQL Workbench para executar os comandos SQL.

3. **Execução dos Scripts**
   - Clone o repositório.
   - Importe o arquivo `scripts.sql` para sua instância MySQL.
   - Execute as consultas no cliente SQL.

## 🌟 Demonstração

Exemplo de consulta para listar inscritos com idade maior que 30 e do sexo feminino:

```sql
SELECT * FROM inscritos 
WHERE idade > 30 
AND sexo = 'F';
```

Exemplo de inserção de dados:

```sql
INSERT INTO inscritos (nome, email, idade, sexo) 
VALUES ('Joana', 'joana@example.com', 28, 'F');
```

## 📝 Observações
Este projeto segue boas práticas de nomenclatura de identificadores em snake_case.
A tabela inscritos foi projetada para suportar fácil extensibilidade.

## 📚 Próximos Passos
Adicionar visualizações (VIEW) para relatórios de análise.
Implementar gatilhos (TRIGGER) para controle de auditoria.
Utilizar Docker para facilitar a inicialização do ambiente de banco de dados.

## ✍️ Autor
Projeto desenvolvido por [Seu Nome Aqui].
Confira meu portfólio completo no GitHub e entre em contato para colaborar em projetos futuros.

## 📄 Licença
Este projeto está sob a licença MIT. Consulte o arquivo LICENSE para mais informações.
