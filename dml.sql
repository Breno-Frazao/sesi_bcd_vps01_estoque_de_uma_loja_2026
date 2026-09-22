USE estoque_loja;

INSERT INTO categoria (id, nome, descricao) VALUES
(1, 'Vestido', 'Vestidos malha leve'),
(2, 'Camisa', 'Camisas Masculinas e Femininas'),
(3, 'Blazer', 'Gola de lapela');

INSERT INTO fornecedor
(id, razao_social, nome_fantasia, cnpj, telefone, email, endereco)
VALUES
(1, 'Cia. Bering', 'Brening', '81.394.025/0001-44',
'(11) 99991-1000', 'Bering.loja@gmail.com', 'R. da '),

(2, 'Mala de Galinhas Ltda.', 'Fazenda', '02.485.196/0001-72',
'(12) 99992-2000', 'Fazenda@gmail.com', 'Av. G ...'),

(3, 'Rara Brasil Ltda.', 'Rara', '11.602.834/0001-08',
'(13) 99993-3000', 'Rara.ra@gmail.com', 'Jd. R ...'),

(4, 'D''ouro brasil Ltda.', 'D''ouro', '45.912.703/0001-51',
'(14) 99994-4000', 'D.ouro@gmail.com', 'R. M ...'),

(5, 'Doce na cabana Ltda.', 'Doce & Cabana', '33.154.298/0001-19',
'(15) 99995-5000', 'Doce_Cabana@gmail.com', 'Av. L ...');

INSERT INTO produto
(id, nome, descricao, preco, marca, id_categoria, id_fornecedor)
VALUES
(1, 'Camisa Básica', 'Manga curta e malha leve',
29.74, 'Bering', 2, 1),

(2, 'Vestido Cropped', 'Alças finas e decote reto',
99.60, 'Fazenda', 1, 2),

(3, 'Blazer', 'Manga drapeada e gola de lapela',
399.90, 'Rara', 3, 3),

(4, 'Vestido Diorviera', 'Cor rosa e algodão leve',
22000.00, 'D''ouro', 1, 4),

(5, 'Camisa com Logo', 'Cor preta e inteiramente em algodão',
3400.00, 'Doce e cabana', 2, 5);

INSERT INTO estoque
(id_estoque, id_produto, quantidade, quantidade_minima, localizacao)
VALUES
(1, 1, 20, 5, 'Prateleira A1'),
(2, 2, 10, 5, 'Prateleira A2'),
(3, 3, 10, 5, 'Prateleira B1'),
(4, 4, 40, 5, 'Prateleira B2'),
(5, 5, 0, 5, 'Prateleira C1');


INSERT INTO movimentacao_estoque
(id_movime, id_produto, tipo, quantidade, data)
VALUES
(1, 1, 'entrada', 40, '2026-10-01'),
(2, 2, 'entrada', 20, '2026-10-02'),
(3, 2, 'saida', 30, '2026-10-22'),
(4, 1, 'saida', 20, '2026-10-15'),
(5, 4, 'entrada', 60, '2026-10-03'),
(6, 3, 'entrada', 10, '2026-10-06'),
(7, 3, 'saida', 50, '2026-10-28'),
(8, 4, 'saida', 20, '2026-10-25');