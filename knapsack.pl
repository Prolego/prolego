:- use_module(library(clpfd)).
 
knapsack :- % item(nomeMissao, tempoSegundos, valorMissao)
	L = [
             item('missao 1',  9,      150),
             item('missao 2',      13,     35),
             item('missao 3',        153,    200),
             item('missao 4', 50,         160),
             item('missao 5',      15,     60),
             item('missao 6',  8,     45),
             item('missao 7',       27,     60),
             item('missao 8',        39,     40),
             item('missao 9',       23,     30),
             item('missao 10',         52,     10),
             item('missao 11',       11,     70),
             item('missao 12',       32,     30)],
        length(L, N), %% L - lista de itens   N - tamanho da lista de itens
        length(R, N), %% R - lista de tamanho igual a L   N - tamanho da lista

        R ins 0..1, %% R faz parte do domínio 0..1

        maplist(arg(2), L, LW), %% :Goal, List1, List2 - opera com dois elementos da lista    Lw - lista de peso
        maplist(arg(3), L, LV), %% LV - lista de valor

        scalar_product(LW, R, #=<, 400), %% (Cs, Vs, Rel, Expr) cs é uma lista de inteiros e vs uma lista de variaveis e inteiros
        scalar_product(LV, R, #=, VM), %% #=< - X(cs) é menor ou igual a Y(vs)     #= - X é igual Y 

        labeling([max(VM)], R), %% (options, vars)

        scalar_product(LW, R, #=, WM), %% WM = peso máximo

        %% affichage des résultats
        compute_lenword(L, 0, Len), %% compara o nome do item com 0 e mostra qual tem o tamanho maior
        sformat(A1, '~~w~~t~~~w|', [Len]),
        sformat(A2, '~~t~~w~~~w|', [4]),
        sformat(A3, '~~t~~w~~~w|', [5]),
        print_results(A1,A2,A3, L, R, WM, VM).
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% to show the results in a good way
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%
compute_lenword([], N, N).
compute_lenword([item(Name, _, _)|T], N, NF):-
        atom_length(Name, L),
        (   L > N -> N1 = L; N1 = N),
        compute_lenword(T, N1, NF).
 
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%
print_results(A1,A2,A3, [], [], WM, WR) :-
        sformat(W1, A1, [' ']),
        sformat(W2, A2, [WM]),
        sformat(W3, A3, [WR]),
        format('~w~w~w~n', [W1,W2,W3]).
 
 
print_results(A1,A2,A3, [_H|T], [0|TR], WM, VM) :-
        print_results(A1,A2,A3, T, TR, WM, VM).
 
print_results(A1, A2, A3, [item(Name, W, V)|T], [1|TR], WM, VM) :-
        sformat(W1, A1, [Name]),
        sformat(W2, A2, [W]),
        sformat(W3, A3, [V]),
        format('~w~w~w~n', [W1,W2,W3]),
        print_results(A1, A2, A3, T, TR, WM, VM).


