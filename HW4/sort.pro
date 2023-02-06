partition(_, [], [], []).
partition(V, [X|XS], YS, [X|ZS]) :- X > V, partition(V, XS, YS, ZS).
partition(V, [X|XS], [X|YS], ZS) :- X =< V, partition(V, XS, YS, ZS).

quicksort([], []).
quicksort([X|XS], S) :- 
	partition(X, XS, L, R), 
	quicksort(L, LS),
	quicksort(R, RS),
	append(LS, [X|RS], S). 
