
% Task 6
% base case
% if the list have only one element.
every_second([X], []).

every_second([], []).

every_second([X,Y|Rest], [Y|List]):-
	every_second(Rest, List).