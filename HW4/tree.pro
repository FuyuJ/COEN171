insert(D, empty, node(empty, D, empty)).
insert(D, node(L, D, R), node(L, D, R)).
insert(D, node(L, X, R), node(LN, X, R)) :- D < X, insert(D, L, LN).
insert(D, node(L,X,R), node(L, X, RN)) :- D > X, insert(D, R, RN).

exists(X, node(_, X, _)).
exists(D, node(L, X, R)) :- D < X, exists(D, L).
exists(D, node(L, X, R)) :- D > X, exists(D, R).
