-- Trocar para o banco mestre antes de restaurar
USE master;
GO

-- Forçar modo de usuário único para restaurar
ALTER DATABASE BibliotecaDB SET SINGLE_USER WITH ROLLBACK IMMEDIATE;
GO

-- Restaurar o banco a partir do backup
RESTORE DATABASE BibliotecaDB
FROM DISK = 'C:\Backups\BibliotecaDB.bak'
WITH REPLACE;
GO

-- Voltar ao modo multiusuário
ALTER DATABASE BibliotecaDB SET MULTI_USER;
GO

-- Backup completo do banco atual
BACKUP DATABASE BibliotecaDB
TO DISK = 'C:\Backups\BibliotecaDB.bak'
WITH FORMAT, INIT, NAME = 'Backup BibliotecaDB';
GO
