% PART 2 - EXTRACTING INFORMATIONS FROM A LIST

% 2.1 - size(List, Size): will contain the number of elements in List
size([], 0). 
size([ _ | Xs ], N) :- size(Xs, N2), N is N2 + 1.

% 2.2 - size with s(s(..(zero)))
size2([], zero).
size2([_ | Xs], s(N)) :- size2(Xs, N).

% 2.3 - sum(List, sum): sum will contain the sum of the elements in the list
sum([], 0).
sum([X | Xs], ACC) :- sum(Xs, N), ACC is X + N.

% 2.4 - average(List, Average): it uses average( List , Count , Sum , Average )
average(List, A) :- average(List, 0, 0, A).
average([], C, S, A) :- A is S / C .
average([ X | Xs ], C, S, A) :-
  C2 is C + 1,
  S2 is S + X,
  average(Xs, C2, S2, A).

% 2.5 - max(List, Max): the biggest element in List
max([X | Xs], Max) :- max([X | Xs], Max, X).
max([], TempMax, TempMax).
max([X | Xs], Max, TempMax) :- TempMax > X, max(Xs, Max, TempMax).
max([X | Xs], Max, TempMax) :- TempMax =< X, max(Xs, Max, X).

% 2.6 - max and min 
max_and_min([X | Xs], Max, Min) :- max_and_min([X | Xs], Max, Min, X , X).
max_and_min([], TempMax, TempMin, TempMax, TempMin).
max_and_min([X | Xs], Max, Min, TempMax, TempMin) :- TempMax > X, TempMin =< X, max_and_min(Xs, Max, Min, TempMax, TempMin).
max_and_min([X | Xs], Max, Min, TempMax, TempMin) :- TempMax > X, X < TempMin,  max_and_min(Xs, Max, Min, TempMax, X).
max_and_min([X | Xs], Max, Min, TempMax, TempMin) :- X >= TempMax, max_and_min(Xs, Max, Min, X, TempMin).