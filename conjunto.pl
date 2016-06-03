/*missao(Valor, Peso)*/
conjunto(X) :-  X = [missao(49,21), missao(23, 1), missao(21, 4)].


/*Ponto Final de cada missao, sendo que cada uma tem como Ponto Inicial 0,0*/

pontos(missao(49, 21), PontoFinal):- PontoFinal = " 10 10 ".
pontos(missao(23, 1), PontoFinal) :- PontoFinal = " 20 20 ".
pontos(missao(21, 4), PontoFinal) :- PontoFinal = " 30 30 ".