USE BibliotecaDB;
GO

-- Dropar a view se já existir
IF OBJECT_ID('vw_UsuariosMaisAtivos', 'V') IS NOT NULL
    DROP VIEW vw_UsuariosMaisAtivos;
GO

-- Criar view sem ORDER BY
CREATE VIEW vw_UsuariosMaisAtivos AS
SELECT U.Nome, COUNT(*) AS TotalEmprestimos
FROM Emprestimos E
JOIN Usuarios U ON E.UsuarioID = U.UsuarioID
GROUP BY U.Nome;
GO

-- Dropar a view se já existir
IF OBJECT_ID('vw_LivrosNuncaEmprestados', 'V') IS NOT NULL
    DROP VIEW vw_LivrosNuncaEmprestados;
GO

-- Criar view de livros nunca emprestados
CREATE VIEW vw_LivrosNuncaEmprestados AS
SELECT L.Titulo
FROM Livros L
LEFT JOIN Emprestimos E ON L.LivroID = E.LivroID
WHERE E.EmprestimoID IS NULL;
GO
