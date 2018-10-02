secret_number(48).
guess(X, Answer) :-
    secret_number(Y),
    X == Y,
    write('Correct!'),nl.

guess(X,Answer) :-
    secret_number(Y),
    X >= Y,
    write('Too big!'),nl,
    fail.

guess(X,Answer) :-
    secret_number(Y),
    X =< Y,
    write('Too small!'),nl,
    fail.