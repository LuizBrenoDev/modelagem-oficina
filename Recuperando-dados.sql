-- Tem que usar: 
-- SELECT, WHERE, ATRIBUTOS DERIVADOS, ORDER BY, HAVING (GRUPOS), JOIN

-- Ordenando Serviços por data de entrega
SELECT os_num, data_entrega, data_emissao, os_status, mao_de_obra FROM os ORDER BY data_entrega;

-- Ordenando mecânicos por nome
SELECT nome FROM mecânico ORDER BY nome;

-- Recuperando todos os veículos que tenham problema no motor
SELECT os_num, os_status, preco_total, data_entrega FROM os WHERE os_status = "Problema no Motor";

-- Recuperando os veículos que tenham problema na bateria
SELECT os_num, os_status, preco_total, data_entrega FROM os WHERE os_status = "Problema na Bateria";

-- Recuperando os mecânicos corretos para cada caso da oficina
SELECT os.os_num AS número_do_OS, os.os_status AS Necessidade, mecânico.código AS código_mecânico, mecânico.nome AS Nome_Do_mecânico
FROM os INNER JOIN mecânico ON mecânico.especialidade = os.mao_de_obra;

-- Recupera o status, a mão de obra, o nome da peça e o somatório de serviços que possuam o somatório maior que 50
SELECT os_status, mao_de_obra, peça.nome as Peça_Nome, SUM(os.preco_total) as Soma FROM os, peça
WHERE mao_de_obra = peça.nome
GROUP BY os_status, peça.nome, mao_de_obra
HAVING SUM(preco_total) > 50.0;

-- Recupera o status e o somatório do preço das peças de serviços com peças que custam menos de 100
SELECT os_status as Status, SUM(os.preco_total) as Soma_do_preço_das_peças FROM os, peça
WHERE peça.preco < 70 AND mao_de_obra = peça.nome
GROUP BY os_status, peça.nome, mao_de_obra;