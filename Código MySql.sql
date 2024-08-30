Create database serverV8;
use serverV8;
show databases;

CREATE TABLE empresas (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(255) NOT NULL,
    quantidade_funcionarios INT,
    idade INT
);

INSERT INTO empresas (nome, quantidade_funcionarios, idade) VALUES
('v1', 100, 10),
('v2', 150, 15),
('v3', 200, 20),
('v4', 250, 25),
('v5', 300, 30),
('v6', 120, 12),
('v7', 180, 18),
('v8', 220, 22),
('v9', 270, 27),
('v10', 320, 32);

CREATE TABLE profissoes (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(255) NOT NULL,
    salario DECIMAL(10, 2) NOT NULL
);

-- Inserir dados de exemplo na tabela Profissoes
INSERT INTO profissoes (nome, salario) VALUES
('Desenvolvedor', 5000),
('Designer', 4000),
('Analista de Sistemas', 5500),
('Gerente de Projetos', 7000),
('Analista de Banco de Dados', 6000),
('Analista de Suporte', 3500),
('Testador', 4500),
('Arquiteto de Software', 8000),
('Consultor de TI', 6500),
('Especialista em Segurança da Informação', 7500);

CREATE TABLE funcionarios (
    id INT AUTO_INCREMENT PRIMARY KEY,
    empresa_id INT,
    profissao_id INT,
    nome VARCHAR(255) NOT NULL,
    idade INT,
    FOREIGN KEY (empresa_id) REFERENCES empresas(id),
    FOREIGN KEY (profissao_id) REFERENCES profissoes(id)
);

INSERT INTO funcionarios (empresa_id, profissao_id, nome, idade) VALUES
(1, 1, 'João Silva', 28),
(1, 2, 'Maria Oliveira', 32),
(2, 3, 'Pedro Santos', 40),
(2, 4, 'Ana Costa', 35),
(3, 5, 'Carlos Almeida', 30),
(4, 6, 'Patrícia Lima', 27),
(5, 7, 'Roberto Souza', 45),
(6, 8, 'Fernanda Pereira', 38),
(7, 9, 'Lucas Fernandes', 29),
(8, 10, 'Juliana Ribeiro', 33);

SELECT 
    f.id AS funcionario_id,
    f.nome AS funcionario_nome,
    f.idade AS funcionario_idade,
    e.nome AS empresa_nome,
    e.quantidade_funcionarios AS empresa_quantidade_funcionarios,
    e.idade AS empresa_idade,
    p.nome AS profissao_nome,
    p.salario AS profissao_salario
FROM 
    funcionarios f
JOIN 
    empresas e ON f.empresa_id = e.id
JOIN 
    profissoes p ON f.profissao_id = p.id;
    
    SELECT 
    f.id AS funcionario_id,
    f.nome AS funcionario_nome,
    f.idade AS funcionario_idade,
    e.nome AS empresa_nome
FROM 
    funcionarios f
JOIN 
    empresas e ON f.empresa_id = e.id;


