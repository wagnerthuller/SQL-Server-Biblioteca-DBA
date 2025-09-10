USE BibliotecaDB;
GO

-- Dropar tabela de log se já existir
IF OBJECT_ID('LogAcessos', 'U') IS NOT NULL
    DROP TABLE LogAcessos;
GO

-- Criar tabela de auditoria de acessos
CREATE TABLE LogAcessos (
    LogID INT PRIMARY KEY IDENTITY,
    UsuarioID INT,
    DataAcesso DATETIME DEFAULT GETDATE()
);
GO

-- Simular acessos
INSERT INTO LogAcessos (UsuarioID) VALUES (1);
INSERT INTO LogAcessos (UsuarioID) VALUES (3);
INSERT INTO LogAcessos (UsuarioID) VALUES (5);
GO

-- Consultar logs
SELECT L.LogID, U.Nome, L.DataAcesso
FROM LogAcessos L
JOIN Usuarios U ON L.UsuarioID = U.UsuarioID
ORDER BY L.DataAcesso DESC;
GO
