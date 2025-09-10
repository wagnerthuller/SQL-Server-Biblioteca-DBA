USE BibliotecaDB;
GO

-- Reorganizar índices para melhorar performance
ALTER INDEX ALL ON Livros REORGANIZE;
ALTER INDEX ALL ON Emprestimos REORGANIZE;
GO

-- Atualizar estatísticas para o otimizador de consultas
UPDATE STATISTICS Livros;
UPDATE STATISTICS Emprestimos;
GO

-- Verificar espaço total do banco
EXEC sp_spaceused;
GO

-- Verificar espaço por tabela
EXEC sp_MSforeachtable 'EXEC sp_spaceused ''?''';
GO
