-- Persista dados em todas as tabelas

USE oficina;

INSERT INTO cliente (nome, veiculo) VALUES ("Alberto Pepperoni", 344);
INSERT INTO cliente (nome, veiculo) VALUES ("Augusto", 345);
INSERT INTO cliente (nome, veiculo) VALUES ("Carlos Alberto Melo", 243);
INSERT INTO cliente (nome, veiculo) VALUES ("Marcelo Castro", 133);
INSERT INTO cliente (nome, veiculo) VALUES ("Jadilson", 255);

INSERT INTO veículo VALUES (1, 344);
INSERT INTO veículo VALUES (1, 336);
INSERT INTO veículo VALUES (2, 345);
INSERT INTO veículo VALUES (3, 243);
INSERT INTO veículo VALUES (4, 133);
INSERT INTO veículo VALUES (5, 255);

INSERT INTO peça VALUES ("Parafuso", 20.0);
INSERT INTO peça VALUES ("Motor", 50.0);
INSERT INTO peça VALUES ("Roda", 35.0);
INSERT INTO peça VALUES ("Parabrisa", 64.0);
INSERT INTO peça VALUES ("Engrenagem", 16.0);
INSERT INTO peça VALUES ("Bateria", 33.0);
INSERT INTO peça VALUES ("Capô", 50.0);
INSERT INTO peça VALUES ("Porta-Malas", 80.0);
INSERT INTO peça VALUES ("Para-Choque", 30.0);

INSERT INTO mecânico VALUES (3344, "João Melo De Castro", "Rua H22", "Eletricidade");
INSERT INTO mecânico VALUES (5677, "Paulo João Da Costa", "Rua Das Margaridas Douradas", "Motor");
INSERT INTO mecânico VALUES (5678, "Onório Figueiredo", "Rua Rosa", "Motor");
INSERT INTO mecânico VALUES (5887, "Enzo Melo De Castro", "Rua Boa vista", "Avaliação de Pneus");
INSERT INTO mecânico VALUES (5112, "Carlos Boa Vista", "Rua Azul Marinho", "Carroceria");
INSERT INTO mecânico VALUES (4331, "Breno Melo De Castro", "Rua Colina Esverdeada", "Carroceria");

INSERT INTO os VALUES (445661, now(), "Carroceria amassada", "Carroceria", 160.0, date("2023-11-12"));
INSERT INTO os VALUES (331416, now(), "Problema no Motor", "Motor", 50.0, date("2023-11-09"));
INSERT INTO os VALUES (556321, now(), "Problema na Bateria", "Bateria", 33.0, date("2023-11-05"));
INSERT INTO os VALUES (667001, now(), "Problema no Motor", "Motor", 50.0, date("2023-10-22"));
INSERT INTO os VALUES (889551, now(), "Para-Choque danificado", "Carroceria", 30.0, date("2023-12-10"));
INSERT INTO os VALUES (555513, now(), "Problema no Pneu", "Avaliação de Pneus", 20.0, date("2023-10-23"));