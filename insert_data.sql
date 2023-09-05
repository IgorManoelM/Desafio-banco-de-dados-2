-- Inserindo dados em todas as tabelas do banco de dados oficina 

-- Acessando o banco 
USE oficina;

INSERT INTO clientes(nome, cpf, tipo, perfil)
                    VALUES('Naruto', '45434567890', 'PF', 'Premio'),
                            ('Sakura', '47586958695', 'PF', 'Normal'),
                            ('Tesla', '23456567890', 'PJ', 'Premio'),
                            ('Bill Gates', '34345567345', 'PF', 'Premio'),
                            ('Sarada', '34345678909', 'PF', 'Normal'),
                            ('Microssoft', '34344456565', 'PJ', 'Premio'),
                            ('Musk', '34345567890', 'PF', 'Normal'),
                            ('Minato', '34345567890', 'PF', 'Premio'),
                            ('Meta', '34344454545', 'PJ', 'Normal'),
                            ('Kushina', '45455678909', 'PF', 'Premio'),
                            ('Madara', '34355555555', 'PF', 'Premio'),
                            ('SpaceX', '34345677878', 'PJ', 'Normal'),
                            ('Mark', '12345678909', 'PF', 'Normal'),
                            ('Hinata', '43455567890', 'PF', 'Premio'),
                            ('Google', '55555555555', 'PJ', 'Premio');
 

INSERT INTO atendimento(idCliente, descricao, tipoAtendimento, tipoCliente)
                    VALUES(1, 'Manutenção do Sistema', 'Serviço', 'Premio'),
                            (2, 'Trocando o Farol', 'Produto', 'Normal'),
                            (3, 'Instalando novo sistema', 'Serviço', 'Normal'),
                            (4, 'Troca de Peça', 'Serviço', 'Premio'),
                            (5, 'Atualizando o computador de bordo', 'Serviço', 'Normal'),
                            (6, 'Peças novas', 'Produto', 'Premio'),
                            (7, 'Troca de ar', 'Serviço', 'Normal'),
                            (8, 'Troca de escape', 'Serviço', 'Normal'),
                            (9, 'Regulando Freios de mão', 'Serviço', 'Normal'),
                            (10, 'Troca de Vidro', 'Produto', 'Premio'),
                            (11, 'Troca de óleo', 'Serviço', 'Premio'),
                            (12, 'Substituição de borrachas', 'Serviço', 'Normal'),
                            (13, 'Reparo no disco', 'Serviço', 'Normal'),
                            (14, 'Instalação de laser', 'Serviço', 'Normal'),
                            (15, 'Lanternas', 'Produto', 'Premio');

INSERT INTO atendente(setor, matricula, cargo)
                        VALUES('Sistemas', '12454', 'Técnico especialista'),
                                ('Eletronico', '54341', 'Técnico especialista'),
                                ('Sistemas', '78767', 'Técnico especialista'),
                                ('Peças Mecanicas', '55656', 'Técnico especialista'),
                                ('Eletronico', '77676', 'Técnico'),
                                ('Sistemas', '77676', 'Técnico especialista'),
                                ('Eletronico', '88787', 'Técnico'),
                                ('Sistemas', '67676', 'Técnico especialista'),
                                ('Sistemas', '54324', 'Técnico especialista'),
                                ('Eletronico', '56566', 'Técnico especialista'),
                                ('Peças Mecanicas', '55456', 'Técnico especialista'),
                                ('Eletronico', '78789', 'Técnico'),
                                ('Sistemas', '87656', 'Técnico especialista'),
                                ('Sistemas', '32323', 'Técnico'),
                                ('Peças Mecanicas', '43433', 'Técnico');


INSERT INTO atendimento_solicitado(idAtendente, idAtendimento, setor, setorEncaminhado, dataCriacao)
                            VALUES(1, 1, 'Peças Mecanicas', NULL, NOW()),
                                    (2, 2, 'Sistemas', NULL, NOW()),
                                    (3, 3, 'Sistemas', NULL, NOW()),
                                    (4, 4, 'Eletronico', NULL, NOW()),
                                    (5, 5, 'Sistemas', NULL, NOW()),
                                    (6, 6, 'Eletronico', NULL, NOW()),
                                    (7, 7, 'Peças Mecanicas', NULL, NOW()),
                                    (8, 8, 'Sistemas', NULL, NOW()),
                                    (9, 9, 'Peças Mecanicas', NULL, NOW()),
                                    (10, 10, 'Eletronico', NULL, NOW()),
                                    (11, 11, 'Sistemas', NULL, NOW()),
                                    (12, 12, 'Eletronico', NULL, NOW()),
                                    (13, 13, 'Peças Mecanicas', NULL, NOW()),
                                    (14, 14, 'Sistemas', NULL, NOW()),
                                    (15, 15, 'Peças Mecanicas', NULL, NOW());


INSERT INTO ordem_serviço(idAtendente, idAtendimento, descricao, prioridade, status)
                VALUES(1, 1, 'Pane no Sistema de Bordo', 'alta', 'em andamento'),
                        (2, 2, 'Central multimidea precisando de ajustes', 'média', 'recebido pelo setor técnico'),
                        (3, 3, 'Troca no sistema de arrefecimento', 'baixa', 'aguardando peças'),
                        (4, 4, 'Sistema de arrefecimento', 'alta', 'sem solução'),
                        (5, 5, 'Travamento no sistema de multimidea', 'média', 'concluido com sucesso'),
                        (6, 6, 'Novo computador de bordo', 'alta', 'entregue ao Cliente'),
                        (7, 7, 'Instalando sistema', 'média', 'finalizado'),
                        (8, 8, 'Troca de freios', 'baixa', 'em andamento'),
                        (9, 9, 'Troca de farois traseiros', 'média', 'recebido pelo setor técnico'),
                        (10, 10, 'Troca de Jogo de rodas', 'alta', 'aguardando peças'),
                        (11, 11, 'Reparo no computador de bordo', 'alta', 'sem solução'),
                        (12, 12, 'Trocando borrachas', 'média', 'concluido com sucesso'),
                        (13, 13, 'Troca de peneus', 'baixa', 'entregue ao Cliente'),
                        (14, 14, 'Novo emplacamento', 'média', 'finalizado'),
                        (15, 15, 'Carregador por indução', 'alta', 'aguardando peças');