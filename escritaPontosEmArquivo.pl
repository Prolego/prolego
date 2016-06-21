escritaPontosEmArquivo([], _).	  
escritaPontosEmArquivo([X|Y], Stream):-
	consult('pontoFinalMissao.pl'),
	PontoInicial = "0 0", 
	destino(X, Final),
	write(Stream, PontoInicial),
	write(Stream, Final),
	escritaPontosEmArquivo(Y, Stream).