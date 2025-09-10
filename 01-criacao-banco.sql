-- Criação do banco de dados
CREATE DATABASE BibliotecaDB;
GO

-- Seleciona o banco
USE BibliotecaDB;
GO

-- Criação das tabelas principais
CREATE TABLE Autores (
    AutorID INT PRIMARY KEY IDENTITY,
    Nome VARCHAR(100) NOT NULL
);

CREATE TABLE Categorias (
    CategoriaID INT PRIMARY KEY IDENTITY,
    Nome VARCHAR(50) NOT NULL
);

CREATE TABLE Livros (
    LivroID INT PRIMARY KEY IDENTITY,
    Titulo VARCHAR(200) NOT NULL,
    AutorID INT FOREIGN KEY REFERENCES Autores(AutorID),
    CategoriaID INT FOREIGN KEY REFERENCES Categorias(CategoriaID)
);
 
CREATE TABLE Usuarios (
    UsuarioID INT PRIMARY KEY IDENTITY,
    Nome VARCHAR(100),
    Email VARCHAR(100)
);

CREATE TABLE Emprestimos (
    EmprestimoID INT PRIMARY KEY IDENTITY,
    LivroID INT FOREIGN KEY REFERENCES Livros(LivroID),
    UsuarioID INT FOREIGN KEY REFERENCES Usuarios(UsuarioID),
    DataEmprestimo DATE,
    DataDevolucao DATE
);


