prolego(Subconjunto):-
  consult('conjunto.pl'),
  consult('prolego.pl'),
  conjunto(Missoes),
  algoritmo01(Missoes, 50, Subconjunto).
 