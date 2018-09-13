% Task 2(f)
% Change the program so that it 
% always gives only one answer.

% way one
minimum(X,Y,X):-
	X<Y. % here we made a change so that X is always smaller then Y
minimum(X,Y,Y):-
	X>=Y. % X is either equal or bigger than Y

/*	
% way two, advance using cut operator 
minimum(X,Y,X):-
	X=<Y, !. % putting cut so that prolog doesn't look for alternatives.
minimum(X,Y,Y):-
	X>=Y. % X is either equal or bigger than Y
*/	
	


% Task5(a)
father(ingemar,anneli).
father(anders,katja).
father(ingemar,inge).
father(ingemar,owe).
father(inge,sara).
father(owe,jonathan).
mother(annmarie,anneli).
mother(annmarie,inge).
mother(annmarie,owe).
mother(anneli,katja).
mother(katja,linus).
man(ingemar).
man(anders).
man(inge).
man(owe).
man(linus).
man(jonathan).
woman(annmarie).
woman(anneli).
woman(katja).
woman(sara).
married(annmarie,ingemar).
married(bjorn,katja).
married(anneli,anders).


	
	

% Task 5(b)
% X is the grandfather to Y
grandfather(X,Y):-
	father(Z,Y), % Z is the father to Y
	father(X,Z). % and X is the father to Z

grandfather(X,Y):-
	mother(Z,Y), % Z is the mother to Y
	father(X,Z). % and X is the father to Z

	
% X is the grandmother to Y
grandmother(X,Y):-
	father(Z,Y), % Z is the father to Y
	mother(X,Z). % and X is the mother to Z

grandmother(X,Y):-
	mother(Z,Y), % Z is the mother to Y
	mother(X,Z). % and X is the mother to Z

	
% X is the parent to Y
parent(X,Y):-
	father(X,Y); % X is the father to Y
	mother(X,Y). % or X is the mother to Y

% X is the brother or sister to Y 
sibling(X,Y):-
	parent(Z,X), % Z is the parent to X
	parent(Z,Y), % and Z is also the parent to Y
	X \= Y. % and X,Y are not the same person.
	
% X is the aunt to Y. i.e. a sister to your mother or father
aunt(X,Y):-
	parent(Z,Y), % Z is the parent to Y
	sibling(X,Z), % and X is the sibling to Z
	woman(X). % and X must be woman

% X is the uncle to Y. i.e. a brother to your mother or father
uncle(X,Y):-
	parent(Z,Y), % Z is the parent to Y
	sibling(X,Z), % and X is the sibling to Z
	man(X). % and X must be man

	
% X is the ancestor to Y
% base case
ancestor(X,Y):-
	parent(X,Y). % X is the parent to Y
	
% recursion case	
ancestor(X,Y):-
	parent(Z,Y),
	ancestor(X,Z).

	


	
% Task 6(c)
% sibling(X,Y) 
% X and Y are siblings if they have the same parent 
% and X,Y are not the same person
sibling(X,Y):- 
	parent(Z,X), 
	parent(Z,Y),
	X\=Y.

% cousin(X,Y) 
% X and Y are cousins if X and Y parents are siblings.
cousin(X,Y):- 
	parent(Z,X), 
	parent(W,Y), 
	sibling(Z,W).

% second_cousin(X,Y) 
% X and Y are second cousins if X and Y parents are cousins.
second_cousin(X,Y):- 
	parent(Z,X), 
	parent(W,Y), 
	cousin(Z,W).
