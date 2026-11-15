INSERT INTO item (codigo, titulo, tipo, autor, edicao, disponivel) VALUES
('L1', 'Java Efetivo',        'LIVRO',   'Joshua Bloch', 3, TRUE),
('L2', 'Clean Code',          'LIVRO',   'Robert Martin', 1, FALSE),
('R1', 'Superinteressante',   'REVISTA', NULL, NULL, TRUE),
('R2', 'Veja',                'REVISTA', NULL, NULL, FALSE);

INSERT INTO usuario (nome, tipo, limite_itens) VALUES
('Maria',  'ALUNO',     3),
('Carlos', 'PROFESSOR', 5);


INSERT INTO emprestimo (item_id, usuario_id, data_retirada, data_devolucao_prevista, data_devolucao, valor_multa)
VALUES (2, 1, '2026-11-01', '2026-11-15', NULL, 0);


INSERT INTO emprestimo (item_id, usuario_id, data_retirada, data_devolucao_prevista, data_devolucao, valor_multa)
VALUES (4, 2, '2026-10-20', '2026-10-27', '2026-10-30', 3.00);