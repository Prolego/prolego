prolego(NumeroConjunto):-
  consult('conjuntoMissoes.pl'),
  consult('algoritmoDeDecisao.pl'),
  conjunto(NumeroConjunto, Missoes),
  algoritmo01(Missoes, 150, Subconjunto),
  open('stringDePontos.pl',write,Stream),  
  write(Stream, 'stringDePontos(Pontos):- Pontos = "'),
  consult('escritaPontosEmArquivo.pl'),
  escritaPontosEmArquivo(Subconjunto, Stream),
  write(Stream, '".'),
  close(Stream),
  consult('integracaoComTraveller.pl').
  /*integracaoComTraveller.*/
