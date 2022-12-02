-- Aqui você deve colocar os códigos SQL referentes às
-- Seleções de dados

-- 1)
 SELECT 
 pe.id ,
 pe.status,
 pe.cliente_id,
 p.id,
 p.nome,
 p.tipo,
 p.preço,
 p.pts_de_lealdade
 FROM pedidos pe
 JOIN 
 produtos_pedidos pp ON pe.id = pp.pedido_id
 JOIN 
 produtos p  ON p.id = pp.produto_id;

-- 2)
SELECT 
pp.pedido_id
FROM 
pedidos pe 
JOIN 
 produtos_pedidos pp ON pe.id = pp.pedido_id
 JOIN 
 produtos p  ON p.id = pp.produto_id
 WHERE  p.nome LIKE 'Fritas';

-- 3)
SELECT 
c.nome AS gostam_de_fritas
FROM 
pedidos pe 
JOIN 
produtos_pedidos pp ON pe.id = pp.pedido_id
JOIN 
produtos p  ON p.id = pp.produto_id
JOIN 
clientes c ON pe.cliente_id  = c.id 
WHERE p.nome = 'Fritas';

-- 4)
SELECT
  ROUND(SUM(pr.preço)::NUMERIC,2) sum
   FROM
   pedidos pe
   JOIN
   produtos_pedidos pp  ON pp.pedido_id  = pe.id
   JOIN produtos pr ON pp.produto_id  = pr.id
   JOIN
   clientes c ON pe.cliente_id = c.id
   WHERE 
   c.nome ='Laura';


-- 5)
   SELECT 
    produtos.nome,
    count(*)  
   FROM 
  produtos_pedidos pp
  JOIN 
  produtos ON pp.produto_id  = produtos.id
  GROUP BY
 produtos.nome;
 