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

ancestor(X,Y) :-
    parent(Y,X).

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
    
/*this rule was added to list aunt's husband as an uncle. Though, it brings the infinity output, it does not require adding any additional rules*/    
uncle(X,Y) :-  
    man(X),
    aunt(Z,Y),
    parent(Z,W),
    parent(X,W),
    dif(X,Z).    

aunt(X,Y) :-
    woman(X),
    parent(Z,X),
    parent(Z,W),
    parent(W,Y),
    dif(X,W).

/*same as uncle above*/
aunt(X,Y) :-
    woman(X),
    uncle(Z,Y),
    parent(Z,W),
    ancestor(W,X),
    dif(X,Z).