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
        length(L, N),
        length(R, N),
        R ins 0..1,
        maplist(arg(2), L, LW),
        maplist(arg(3), L, LV),
        scalar_product(LW, R, #=<, 150),
        scalar_product(LV, R, #=, VM),
        labeling([max(VM)], R),
        scalar_product(LW, R, #=, WM),
        %% affichage des résultats
        compute_lenword(L, 0, Len),
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


