calculate([], 0, 0, 0).
calculate([X|Tail], Positive, Negative, Zero) :-
    X < 0,
    calculate(Tail, Positive, Negative1, Zero),
    Negative is Negative1 + 1.
calculate([X|Tail], Positive, Negative, Zero) :-
    X > 0,
    calculate(Tail, Positive1, Negative, Zero),
    Positive is Positive1 + 1.
calculate([X|Tail], Positive, Negative, Zero) :-
    X = 0,
    calculate(Tail, Positive, Negative, Zero1),
    Zero is Zero1 + 1.