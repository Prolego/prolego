prolego:-
  consult('conjunto.pl'),
  consult('prolego.pl'),
  conjunto(Missoes),
  algoritmo01(Missoes, 50, Subconjunto),
  resultado(Subconjunto).
  
resultado([]).	  
resultado([X|Y]):-
	consult('conjunto.pl'),
	PontoInicial = "0, 0", 
	pontos(X, Final),
	write(PontoInicial),
	write(", "),
	write(Final),
	resultado(Y).
