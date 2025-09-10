USE BibliotecaDB;
GO

-- Dropar a procedure se j� existir
IF OBJECT_ID('sp_RelatorioEmprestimosPorPeriodo', 'P') IS NOT NULL
    DROP PROCEDURE sp_RelatorioEmprestimosPorPeriodo;
GO

-- Procedure: relat�rio de empr�stimos por per�odo
CREATE PROCEDURE sp_RelatorioEmprestimosPorPeriodo
    @DataInicio DATE,
    @DataFim DATE
AS
BEGIN
    SELECT 
        U.Nome AS Usuario,
        L.Titulo AS Livro,
        E.DataEmprestimo,
        E.DataDevolucao
    FROM Emprestimos E
    JOIN Usuarios U ON E.UsuarioID = U.UsuarioID
    JOIN Livros L ON E.LivroID = L.LivroID
    WHERE E.DataEmprestimo BETWEEN @DataInicio AND @DataFim;
END;
GO

-- Exemplo de execu��o:
-- EXEC sp_RelatorioEmprestimosPorPeriodo '2025-08-01', '2025-08-31';
