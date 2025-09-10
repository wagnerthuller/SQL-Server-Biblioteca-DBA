-- Inserção de dados fictícios

-- Autores
INSERT INTO Autores (Nome) VALUES
('Machado de Assis'), ('Clarice Lispector'), ('Graciliano Ramos'),
('Cecília Meireles'), ('Carlos Drummond de Andrade'), ('Monteiro Lobato'),
('Lygia Fagundes Telles'), ('Jorge Amado'), ('Rubem Fonseca'), ('Rachel de Queiroz');

-- Categorias
INSERT INTO Categorias (Nome) VALUES
('Romance'), ('Conto'), ('Poesia'), ('Infantil'), ('Drama'),
('Crônica'), ('Histórico'), ('Fantasia'), ('Suspense'), ('Biografia');

-- Livros
INSERT INTO Livros (Titulo, AutorID, CategoriaID) VALUES
('Dom Casmurro', 1, 1), ('Memórias Póstumas de Brás Cubas', 1, 1),
('A Hora da Estrela', 2, 2), ('Vidas Secas', 3, 1),
('Romanceiro da Inconfidência', 4, 3), ('Alguma Poesia', 5, 3),
('Reinações de Narizinho', 6, 4), ('As Meninas', 7, 1),
('Gabriela, Cravo e Canela', 8, 1), ('O Cobrador', 9, 2),
('O Quinze', 10, 1), ('Capitães da Areia', 8, 1),
('Sítio do Picapau Amarelo', 6, 4), ('A Paixão Segundo G.H.', 2, 2),
('Felicidade Clandestina', 2, 2);

-- Usuários
INSERT INTO Usuarios (Nome, Email) VALUES
('João Silva', 'joao.silva@email.com'), ('Maria Souza', 'maria.souza@email.com'),
('Carlos Lima', 'carlos.lima@email.com'), ('Ana Paula', 'ana.paula@email.com'),
('Fernanda Rocha', 'fernanda.rocha@email.com'), ('Ricardo Mendes', 'ricardo.mendes@email.com'),
('Juliana Costa', 'juliana.costa@email.com'), ('Bruno Oliveira', 'bruno.oliveira@email.com'),
('Patrícia Gomes', 'patricia.gomes@email.com'), ('Eduardo Martins', 'eduardo.martins@email.com');

-- Empréstimos
INSERT INTO Emprestimos (LivroID, UsuarioID, DataEmprestimo, DataDevolucao) VALUES
(1, 1, '2025-08-01', '2025-08-10'), (2, 2, '2025-08-03', '2025-08-12'),
(3, 3, '2025-08-05', '2025-08-15'), (4, 4, '2025-08-07', '2025-08-17'),
(5, 5, '2025-08-09', '2025-08-19'), (6, 6, '2025-08-11', '2025-08-21'),
(7, 7, '2025-08-13', '2025-08-23'), (8, 8, '2025-08-15', '2025-08-25'),
(9, 9, '2025-08-17', '2025-08-27'), (10, 10, '2025-08-19', '2025-08-29'),
(11, 1, '2025-08-21', '2025-08-31'), (12, 2, '2025-08-23', '2025-09-02'),
(13, 3, '2025-08-25', '2025-09-04'), (14, 4, '2025-08-27', '2025-09-06'),
(15, 5, '2025-08-29', '2025-09-08');
