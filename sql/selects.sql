-- todos
SELECT codigo, titulo, tipo, disponivel
FROM item
ORDER BY tipo, codigo;

-- emprestimos abertos
SELECT u.nome, i.titulo, e.data_retirada, e.data_devolucao_prevista
FROM emprestimo e
JOIN usuario u ON u.id = e.usuario_id
JOIN item    i ON i.id = e.item_id
WHERE e.data_devolucao IS NULL
ORDER BY e.data_retirada;

-- total de multas
SELECT u.nome, COALESCE(SUM(e.valor_multa), 0) AS total_multas
FROM usuario u
LEFT JOIN emprestimo e ON e.usuario_id = u.id
GROUP BY u.id, u.nome
ORDER BY total_multas DESC;

-- itens nao emprestados
SELECT i.codigo, i.titulo, i.tipo
FROM item i
LEFT JOIN emprestimo e ON e.item_id = i.id
WHERE e.id IS NULL
ORDER BY i.codigo;