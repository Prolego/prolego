/*missao(Valor, Tempo, NomeMissao)*/
conjunto(Numero, Missoes) :- Numero == 1 -> Missoes = [missao(20, 28, caminhao),
													   missao(30, 22, sinalEvacuacao),
													   missao(30, 13, aviao),
													   missao(30, 15, galho),
													   missao(30, 15, tsunami),
													   missao(25, 30, ambulancia),
													   missao(20, 37, realocacao),
													   missao(30, 26, baseIsolamento),
													   missao(31, 40, obstaculos),
													   missao(25, 15, elevarCasa),
													   missao(33, 26, familia),
													   missao(36, 26, seguranca)];
							 Numero == 2 -> Missoes = [missao(20, 28, caminhao),
													   missao(30, 22, sinalEvacuacao),
													   missao(30, 13, aviao),
													   missao(30, 15, galho),
													   missao(30, 15, tsunami),
													   missao(25, 30, ambulancia),
													   missao(20, 37, realocacao)];
							 Numero == 3 -> Missoes = [missao(20, 37, realocacao),
													   missao(30, 26, baseIsolamento),
													   missao(31, 40, obstaculos),
													   missao(25, 15, elevarCasa),
													   missao(33, 26, familia),
													   missao(36, 26, seguranca)];
							 Numero == 4 -> Missoes = [missao(30, 13, aviao),
													   missao(30, 15, galho),
													   missao(30, 15, tsunami),
													   missao(25, 30, ambulancia),
													   missao(20, 37, realocacao),
													   missao(30, 26, baseIsolamento)];
							 Numero == 5 -> Missoes = [missao(30, 13, aviao),
													   missao(30, 15, tsunami),
													   missao(20, 37, realocacao),
													   missao(30, 26, baseIsolamento),
													   missao(31, 40, obstaculos),
													   missao(25, 15, elevarCasa),
													   missao(33, 26, familia),
													   missao(36, 26, seguranca)];
							 Numero == 6 -> Missoes = [missao(20, 28, caminhao),
													   missao(30, 22, sinalEvacuacao),
													   missao(30, 13, aviao),
													   missao(30, 15, galho),
													   missao(31, 40, obstaculos),
													   missao(25, 15, elevarCasa),
													   missao(33, 26, familia),
													   missao(36, 26, seguranca)];
							 Numero == 7 -> Missoes = [missao(30, 15, tsunami),
													   missao(25, 30, ambulancia),
													   missao(20, 37, realocacao),
													   missao(30, 26, baseIsolamento),
													   missao(33, 26, familia),
													   missao(36, 26, seguranca)];
							 Numero == 8 -> Missoes = [missao(30, 15, tsunami),
													   missao(25, 30, ambulancia),
													   missao(20, 37, realocacao),
													   missao(33, 26, familia),
													   missao(36, 26, seguranca)];
							 Numero == 9 -> Missoes = [missao(30, 22, sinalEvacuacao),
													   missao(30, 13, aviao),
													   missao(30, 15, galho),
													   missao(30, 15, tsunami),
													   missao(25, 30, ambulancia),
													   missao(20, 37, realocacao),
													   missao(30, 26, baseIsolamento),
													   missao(31, 40, obstaculos),
													   missao(25, 15, elevarCasa),
													   missao(33, 26, familia),
													   missao(36, 26, seguranca)];
							 Numero == 10 -> Missoes = [missao(20, 28, caminhao),
													   missao(30, 22, sinalEvacuacao),
													   missao(30, 13, aviao),
													   missao(30, 15, galho),
													   missao(30, 15, tsunami),
													   missao(25, 30, ambulancia),
													   missao(20, 37, realocacao),
													   missao(30, 26, baseIsolamento),
													   missao(31, 40, obstaculos),
													   missao(25, 15, elevarCasa),
													   missao(33, 26, familia)].


missao(20, 28, caminhao).
missao(30, 22, sinalEvacuacao).
missao(30, 13, aviao).
missao(30, 15, galho).
missao(30, 15, tsunami).
missao(25, 30, ambulancia).
missao(20, 37, realocacao).
missao(30, 26, baseIsolamento).
missao(31, 40, obstaculos).
missao(25, 15, elevarCasa).
missao(33, 26, familia).
missao(36, 26, seguranca).
