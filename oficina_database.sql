-- Criando o banco de dados oficina
CREATE DATABASE oficina;

-- Acessando o banco de dados oficina
USE oficina;

-- criando a tabela de clientes
CREATE TABLE clientes(
	idCliente INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(20),
    cpf CHAR(11),
    tipo enum('PJ', 'PF') DEFAULT 'PF',
    perfil enum('Normal', 'Premio') DEFAULT 'Normal'
);

-- criando a tabela de atendimento
CREATE TABLE atendimento(
	idAtendimento INT AUTO_INCREMENT PRIMARY KEY,
    idCliente INT,
    descricao VARCHAR(255) NOT NULL,
    tipoAtendimento VARCHAR(50) NOT NULL,
    tipoCliente ENUM('Normal', 'Premio') DEFAULT 'Normal',
    CONSTRAINT fk_pedido_cliente FOREIGN KEY(idCliente) REFERENCES clientes(idCliente)
);

-- criando a tabela atendente
CREATE TABLE atendente(
	idAtendente INT AUTO_INCREMENT PRIMARY KEY,
    setor VARCHAR(50) NOT NULL,
    matricula VARCHAR(20) NOT NULL,
    cargo VARCHAR(20) NOT NULL
);

-- criando a tabela atendimento solicitado
CREATE TABLE atendimento_solicitado(
	idAtendente INT,
    idAtendimento INT,
    setor ENUM('Sistemas', 'Eletronico', 'Peças Mecanicas') DEFAULT 'Peças Mecanicas',
    setorEncaminhado VARCHAR(50) DEFAULT NULL,
    dataCriacao DATATIME,
    PRIMARY KEY(idAtendente, idAtendimento),
    CONSTRAINT fk_atendimento_solicitado_atendente FOREIGN KEY(idAtendente) REFERENCES responsavel(idAtendente),
	CONSTRAINT fk_atendimento_solicitado_atendimento FOREIGN KEY(idAtendimento) REFERENCES pedido(idAtendimento)
);

-- criando a tabela ordem de seviço
create table ordem_servico(
    idAtendente INT,
    idAtendimento INT,
    descricao VARCHAR(255),
    prioridade ENUM('baixa', 'média', 'alta') default 'baixa',
    status ENUM('em andamento', 'recebido pelo setor técnico', 'aguardando peças', 'sem solução',
		'concluido com sucesso', 'entregue ao Cliente', 'finalizado'),
	PRIMARY KEY(idAtendente, idAtendimento),
	CONSTRAINT fk_atendimento_solicitado_OS FOREIGN KEY(idAtendente, idAtendimento)  REFERENCES pedido_gerado(idAtendente, idAtendimento)	
);