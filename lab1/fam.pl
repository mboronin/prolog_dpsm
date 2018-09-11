% father(X,Y) X is the father to Y
father(sergey,mikhail).
mother(nina,mikhail).
man(mikhail).
man(sergey).
man(yuri).
man(berart).
man(egor).
man(sergei).
woman(svetlana).
woman(nina).
woman(tatyana).

father(yuri,sergey).
father(berart,nina).
father(berart,sergei).
father(yuri,tatyana).
mother(svetlana,tatyana).
mother(nadezda,nina).
mother(tatyana,egor).
mother(tatyana,egor).
parent(X,Y):-
	father(X,Y); mother(X,Y).
ancestor(X,Y):-
	father(Y,X); mother(Y,X).
grandfather(X,Y):-
	father(X,Z), parent(Z,Y).
grandmother(X,Y):-
	mother(X,Z), mother(Z,Y).
aunt(X,Y):-
	




