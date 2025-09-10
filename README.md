# 📚 Projeto SQL Server - BibliotecaDB

Este projeto simula um ambiente de administração de banco de dados (DBA) para uma biblioteca. Ele foi desenvolvido com foco em boas práticas de modelagem, manutenção, performance e auditoria, ideal para compor um portfólio técnico.

## 🧱 Estrutura do Banco

O banco de dados contém as seguintes tabelas:

- **Autores**: Cadastro de autores
- **Categorias**: Gêneros literários
- **Livros**: Cadastro de livros com vínculo a autor e categoria
- **Usuários**: Pessoas que emprestam livros
- **Empréstimos**: Registro de empréstimos e devoluções
- **LogAcessos**: Auditoria de acessos simulados

## 🛠️ Funcionalidades DBA

- Criação e modelagem de banco de dados
- Inserção de dados fictícios para simulação
- Backup e restore com controle de sessões
- Reorganização de índices e atualização de estatísticas
- Views analíticas para relatórios rápidos
- Procedures parametrizadas para consultas por período
- Auditoria de acessos simulada com log de usuários

## 📂 Estrutura dos Scripts

Os scripts estão organizados na pasta `scripts/`:
scripts/ 
├── 01-criacao-banco.sql 
├── 02-populacao-dados.sql 
├── 03-backup-e-restore.sql 
├── 04-manutencao.sql 
├── 05-views.sql ├
── 06-procedures.sql 
├── 07-consultas-analiticas.sql 
├── 08-auditoria.sql

## 🚀 Como Executar

1. Abra o SQL Server Management Studio (SSMS)
2. Execute os scripts na ordem acima
3. Verifique os dados e funcionalidades usando as views e procedures
4. Simule rotinas de manutenção com o script `04-manutencao.sql`
5. Realize backups e restores com segurança usando `03-backup-e-restore.sql`

## 📌 Requisitos

- SQL Server Express ou superior
- SSMS instalado
- Permissão para salvar backups em `C:\Backups\`

## 👨‍💻 Autor

**Wagner**  
Mauá, São Paulo – Brasil  
Projeto desenvolvido para fins de estudo e portfólio técnico

📬 Entre em contato: [LinkedIn](https://www.linkedin.com/in/wagner-thuller-7786b3272)




