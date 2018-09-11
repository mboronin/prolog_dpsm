mammal(X):-
	viviparous(X), % gives birth to living little ones
	carnivoure(X). % meat-eater
viviparous(lion).
viviparous(tiger).
carnivoure(Y):-
	has_sharp_teeth(Y).
	has_claws(Y).
has_sharp_teeth(lion).
has_sharp_teeth(tiger).
has_claws(tiger).
has_claws(lion).