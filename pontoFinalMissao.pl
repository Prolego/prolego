/*Ponto Final de cada missao, sendo que cada uma tem como Ponto Inicial 0,0*/

destino(missao(20, 28, caminhao), PontoFinal):- PontoFinal = " 12 21 ".
destino(missao(30, 22, sinalEvacuacao), PontoFinal) :- PontoFinal = " 65 18 ".
destino(missao(30, 13, aviao), PontoFinal) :- PontoFinal = " 31 2 ".
destino(missao(30, 15, galho), PontoFinal):- PontoFinal = " 14 33 ".
destino(missao(30, 15, tsunami), PontoFinal) :- PontoFinal = " 29 14 ".
destino(missao(25, 30, ambulancia), PontoFinal) :- PontoFinal = " 33 22 ".
destino(missao(20, 37, realocacao), PontoFinal):- PontoFinal = " 62 31 ".
destino(missao(30, 26, baseIsolamento), PontoFinal) :- PontoFinal = " 53 30 ".
destino(missao(31, 40, obstaculos), PontoFinal) :- PontoFinal = " 75 8 ".
destino(missao(25, 15, elevarCasa), PontoFinal):- PontoFinal = " 34 26 ".
destino(missao(33, 26, familia), PontoFinal) :- PontoFinal = " 75 12 ".
destino(missao(36, 26, seguranca), PontoFinal) :- PontoFinal = " 75 12 ".
