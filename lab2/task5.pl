find_word(List) :-
    word_member('of', List),
    word_member('fond', List).

word_member(Word, [X|Tail]) :-
    Word == X;
    word_member(Word,Tail).