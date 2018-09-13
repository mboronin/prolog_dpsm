is_year_leap(X) :-
    0 is X mod 4,
    0 =\= X mod 100.

is_year_leap(X) :- 
    0 is X mod 400.
    
