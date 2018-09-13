%Number to be guessed, I tried to use random(Min,Max,R) but for some reason it did not work for me
num(50).
guess_a_number:- %we start a program
    num(Y),
    guess_a_number(Y).
guess_a_number(Y):-
    write('Give an integer: '),
    read(X),
    guess_a_number(Y,X).
guess_a_number(Y, X):- %Bigger or smaller cases are more likely to happen, so I put it first, not like in the pattern
    Y<X,
    write('Too big!'),
    nl, %new line
    guess_a_number(Y).
guess_a_number(Y, X):-
    Y>X,
    write('Too small!'),
    nl, 
    guess_a_number(Y).
guess_a_number(X, X):-
    write('Correct!!!'),
    nl.
