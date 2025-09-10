USE BibliotecaDB;
GO

-- Reorganizar �ndices para melhorar performance
ALTER INDEX ALL ON Livros REORGANIZE;
ALTER INDEX ALL ON Emprestimos REORGANIZE;
GO

-- Atualizar estat�sticas para o otimizador de consultas
UPDATE STATISTICS Livros;
UPDATE STATISTICS Emprestimos;
GO

-- Verificar espa�o total do banco
EXEC sp_spaceused;
GO

-- Verificar espa�o por tabela
EXEC sp_MSforeachtable 'EXEC sp_spaceused ''?''';
GO
