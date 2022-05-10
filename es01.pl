% PART 1 - QUERIES ON LIST

% 1.1 - search(Elem, List)
search(X, [ X | _ ]).
search(X, [ _ | Xs]) :- search(X, Xs).

% 1.2 - search2(Elem, List): look for two consecutive occurences of Elem
search2(X, [X,X | _ ]).
search2(X, [_|Xs]) :- search2(X, Xs).

% 1.3 - search_two(Elem, List): looks for two occurrences of Elem with any element in between
search_two(X, [X, _ , X | _ ]).
search_two(X, [_|Xs]) :- search_two(X,Xs).

% 1.4 - search_anytwo(Elem, List): looks for any Elem that occurs two times , anywhere
search_anytwo(X, [X | Xs]) :- search(X, Xs).
search_anytwo(X, [_ | Xs]) :- search_anytwo(X, Xs).
