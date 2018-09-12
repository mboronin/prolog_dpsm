man(sergey). %my father
man(mikhail).
man(yuri).
man(egor).
man(berart).
man(dmitry).
man(sergei). %my uncle
man(vasily).

woman(nina).
woman(svetlana).
woman(nadezhda).
woman(tatyana).
woman(olga).
woman(elena).

father(yuri,sergey).
father(yuri,tatyana).
father(berart,sergei).
father(berart,nina).
father(sergey,mikhail).
father(sergei,dmitry).
father(sergey,vasily).
father(sergei,elena).

mother(svetlana,tatyana).
mother(svetlana,sergey).
mother(nadezhda,sergei).
mother(nadezhda,nina).
mother(olga,dmitry).
mother(nina,mikhail).
mother(tatyana,egor).

parent(X,Y) :-
    father(X,Y).
parent(X,Y) :-
    mother(X,Y).

% X is the ancestor to Y
% base case
ancestor(X,Y):-
        parent(X,Y). % X is the parent to Y
        
% recursion case        
ancestor(X,Y):-
        parent(Z,Y),
        ancestor(X,Z).

grandfather(X,Y) :-
    man(X),
    parent(X,Z),
    parent(Z,Y).


uncle(X,Y) :-
    man(X),
    parent(Z,X),
    parent(Z,W),
    parent(W,Y),
    dif(X,W).

aunt(X,Y) :-
    woman(X),
    parent(Z,X),
    parent(Z,W),
    parent(W,Y),
    dif(X,W).

sibling(X,Y) :-
    parent(Z,X),
    parent(Z,Y),
    dif(X,Y).

cousin(X,Y) :-
    parent(Z,X),
    parent(W,Y),
    sibling(Z,W),
    dif(X,Y).

second_cousin(X,Y) :-
    parent(Z,X),
    parent(W,Y),
    cousin(Z,W),
    dif(X,Y).