% PART 3 - COMPARE LISTS

% 3.1 - same(List1, List2)
same([], []).
same([ X | Xs ], [ X | Ys ]) :- same( Xs ,Ys).

% 3.2 - all_bigger(List1, List2): all elements in List1 are bigger than those in List2 
all_bigger([X], [Y]) :- X > Y.
all_bigger([X | Xs], [Y | Ys]) :- X > Y, all_bigger(Xs, Ys).

%3.3 - sublist(List1, List2): List1 should contain elements all also in List2
search(X, [ X | _ ]).
search(X, [ _ | Xs]) :- search(X, Xs).
sublist([], _).
sublist([X | Xs], List2) :- sublist(Xs, List2), search(X, List2).
