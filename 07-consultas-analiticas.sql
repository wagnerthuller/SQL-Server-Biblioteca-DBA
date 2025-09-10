USE BibliotecaDB;
GO

-- Livros mais emprestados
SELECT L.Titulo, COUNT(*) AS TotalEmprestimos
FROM Emprestimos E
JOIN Livros L ON E.LivroID = L.LivroID
GROUP BY L.Titulo
ORDER BY TotalEmprestimos DESC;
GO

-- Usuários com mais empréstimos
SELECT U.Nome, COUNT(*) AS Total
FROM Emprestimos E
JOIN Usuarios U ON E.UsuarioID = U.UsuarioID
GROUP BY U.Nome
ORDER BY Total DESC;
GO

-- Livros nunca emprestados
SELECT L.Titulo
FROM Livros L
LEFT JOIN Emprestimos E ON L.LivroID = E.LivroID
WHERE E.EmprestimoID IS NULL;
GO

-- Empréstimos em atraso (simulação com base na data atual)
SELECT 
    U.Nome AS Usuario,
    L.Titulo AS Livro,
    E.DataEmprestimo,
    E.DataDevolucao
FROM Emprestimos E
JOIN Usuarios U ON E.UsuarioID = U.UsuarioID
JOIN Livros L ON E.LivroID = L.LivroID
WHERE E.DataDevolucao < GETDATE();
GO
