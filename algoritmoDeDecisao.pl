/* algoritmo01(Conjunto, TempoMaximo, Subconjunto) é verdadeiro se o Conjunto for uma lista de missao */
/* missao(Valor, Tempo, NomeMissao) e a lista Subconjunto for um subconjunto de Conjunto tal que a soma dos valores no */
/* subconjunto seja máxima e a soma dos Tempos no Subconjunto seja menor ou igual ao TempoMaximo */
/*replicar preenche a primeira linha com zeros. Recebe o TempoMaximo pois
 * representa a quantidade de colunas na linha*/
algoritmo01(Conjunto, TempoMaximo, Subconjunto) :-
    zerarPrimeiraLinha(TempoMaximo, 0, PrimeiraLinha),
    algoritmo01_1(Conjunto, TempoMaximo, [0|PrimeiraLinha], [], [UltimaLinha|Tabela]),
    reverse(Conjunto, ConjuntoRevertido),
    algoritmo01_3(Tabela, UltimaLinha, TempoMaximo, ConjuntoRevertido, SubconjuntoRevertido),
    reverse(SubconjuntoRevertido, Subconjunto).

algoritmo01_1([], _, LinhaAnterior, Tabela, [LinhaAnterior|Tabela]).
algoritmo01_1([missao(Valor, Tempo, _)|Conjunto], TempoMaximo, LinhaAnterior, Tabela0, Tabela) :-
    algoritmo01_2(1, TempoMaximo, Valor, Tempo, LinhaAnterior, ProximaLinha),
    algoritmo01_1(Conjunto, TempoMaximo, [0|ProximaLinha], [LinhaAnterior|Tabela0], Tabela).
    
algoritmo01_2(I, TempoMaximo, _, _, _, []):-
    I > TempoMaximo, !.
algoritmo01_2(I, TempoMaximo, Valor, Tempo, LinhaAnterior, [Item|ProximaLinha]):-
    I_Tempo is I - Tempo,
    I_Tempo >= 0, 
    num_membro(LinhaAnterior, I_Tempo, Item1),
    Item is Valor + Item1,
    num_membro(LinhaAnterior, I, Item2),
    Item2 < Item, !,
    I1 is I + 1, 
    algoritmo01_2(I1, TempoMaximo, Valor, Tempo, LinhaAnterior, ProximaLinha).
    algoritmo01_2(I, TempoMaximo, Valor, Tempo, LinhaAnterior, [Item|ProximaLinha]):-
    num_membro(LinhaAnterior, I, Item), !, 
    I1 is I + 1,
    algoritmo01_2(I1, TempoMaximo, Valor, Tempo, LinhaAnterior, ProximaLinha).
    
algoritmo01_3([], _, _, _, []).
algoritmo01_3([LinhaAnterior|Tabela], ProximaLinha, I, [Item|Conjunto], [Item|Subconjunto]):-
    Item=missao(_, Tempo, _),
    num_membro(ProximaLinha, I, ProximaLinha_I),
    num_membro(LinhaAnterior, I, LinhaAnterior_I),
    ProximaLinha_I \= LinhaAnterior_I, !,
    I1 is I - Tempo,
    algoritmo01_3(Tabela, LinhaAnterior, I1, Conjunto, Subconjunto).
    
algoritmo01_3([LinhaAnterior|Tabela], _, I, [_|Conjunto], Subconjunto):- 
    algoritmo01_3(Tabela, LinhaAnterior, I, Conjunto, Subconjunto).
    
/* algoritmo(Conjunto, TempoMaximo, Colecao) é true se Conjunto for uma lista de missao */
/* missao(Valor, Tempo, NomeMissao) e a lista Colecao contém elementos de Conjunto, */

num_membro(Xs, N, X):-num_membro_1(Xs, X, 0, N).

num_membro_1([X|_], X, I, I).
num_membro_1([_|Xs], X, I0, I):-
  I1 is I0 + 1,
  num_membro_1(Xs, X, I1, I).

zerarPrimeiraLinha(0, _, []):-!.  
zerarPrimeiraLinha(TempoMax, Zero, [Zero|Cauda]):-
  TempoMax > 0,
  TempoDiminuido is TempoMax - 1,
  zerarPrimeiraLinha(TempoDiminuido, Zero, Cauda).


%reverse(Xs, Ys):-reverse_1(Xs, [], Ys).

%reverse_1([], As, As).
%reverse_1([X|Xs], As, Ys):-reverse_1(Xs, [X|As], Ys).

