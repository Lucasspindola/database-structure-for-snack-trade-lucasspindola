-- Aqui você deve colocar os códigos SQL referentes às
-- Simulações de um CRUD

-- Criação

-- 1)
INSERT INTO clientes
  (nome, lealdade)
VALUES
  ('Georgia', 0);
-- 2)
INSERT INTO pedidos
    (status, cliente_id)
VALUES
  ('Recebido', 6);

-- 3)
 INSERT INTO produtos_pedidos
  (pedido_id, produto_id)
VALUES
  (6, 1),
  (6, 2),
  (6, 6),
  (6, 6),
  (6, 4),
  (6, 7);


-- Leitura

-- 1)
 SELECT	
c,
pedidos,	
p.id,
p.nome,
p.tipo,
round(p.preço::NUMERIC,2),
p.pts_de_lealdade  
FROM 	
produtos p 
JOIN 	
produtos_pedidos pp ON p.id = pp.produto_id
JOIN pedidos  ON pedidos.id = pp.pedido_id
JOIN clientes c ON c.id = pedidos.cliente_id 
WHERE c.nome ILIKE 'Georgia';


-- Atualização

-- 1)



-- Deleção

-- 1)


