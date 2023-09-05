-- Acessando o banco 
USE oficina;

-- Consultando todos os clientes
SELECT * FROM clientes;

-- Consultando clientes com perfil Premio 
SELECT * FROM clientes WHERE perfil = 'Premio';

-- Consultando clientes codastrados como PJ 
SELECT * FROM clientes WHERE tipo = 'PJ';

-- consultando atendentes em ordem crescente de matricula
SELECT * FROM atendente ORDER BY matricula ASC;

-- consultando atendimento de clientes com perfil premio
SELECT * FROM atendimento WHERE tipoCliente = 'Premio';

-- consultando pedidos e seus clientes associados
SELECT p.*, c.nome AS nome FROM atendimento a
JOIN clientes c ON a.idCliente = c.idCliente;

-- Consultando quantidade de clientes
SELECT COUNT(*) AS quantidadeClientes FROM clientes;


-- Consultando numero de pedidos em cada prioridade
SELECT prioridade, COUNT(*) FROM ordem_servico GROUP BY prioridade;

-- Calcular o total de pedidos para cada cliente
SELECT c.nome AS cliente, COUNT(p.idAtendimento) AS totalAtendimentos FROM clientes c
LEFT JOIN atendimento p ON c.idCliente = p.idCliente
GROUP BY c.idCliente, c.nome;