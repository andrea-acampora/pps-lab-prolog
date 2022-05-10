% PART 4 - CREATING LISTS

% 4.1 - seq(N, List)
seq(0, []).
seq(N, [0 | T ]) :- N2 is N - 1, seq(N2, T).
 
% 4.2 - seqR(X, List)
seqR(0, [0]).
seqR(X, [X | Xs]) :- seqR(Y, Xs), Y is X - 1.

% 4.3 - seqR2(N, List)
last([], N, [N]).
last([X|Xs], N, [X|Ys]) :- last(Xs, N, Ys).