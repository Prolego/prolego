prolego:-
  consult('conjunto.pl'),
  consult('prolego.pl'),
  conjunto(Missoes),
  algoritmo01(Missoes, 50, Subconjunto),
  open('resultado.pl',write,Stream),  
  write(Stream, 'teste(A):- A = "'),
  resultado(Subconjunto, Stream),
  write(Stream, '"'),
  close(Stream),
  consult('resultado.pl'),
  teste(A),
  string_concat("cmd.exe /C java -jar teste.jar ", A, Result),
  shell(Result).
  
resultado([], _).	  
resultado([X|Y], Stream):-
	consult('conjunto.pl'),
	PontoInicial = "0 0", 
	pontos(X, Final),
	write(Stream, PontoInicial),
	write(Stream, Final),
	resultado(Y, Stream).
