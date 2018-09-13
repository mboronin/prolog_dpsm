% Task 3
mammal(X):-				
	viviparous(X), % give birth to living little ones	carnivore(X). % meat-eaterviviparous(lion).		viviparous(tiger).		carnivore(Y):-			sharp_teeth(Y),	has_claws(Y).has_sharp_teeth(lion).		has_sharp_teeth(tiger).		has_claws(tiger).has_claws (lion).


% Task 4

% part(X,Y) Y is a part of Xpart(bike,saddle).part(bike,wheel).part(wheel,spoke). % in Swedish ekerpart(wheel,tyre).part(tyre,inner_tube).part(inner_tube,valve_rubber).% part_of_bike(X) X is a part of a bike or a part of a part of the bike part_of_bike(X):-	part(bike,X).part_of_bike(X):-	part(Y,X), part_of_bike(Y).


% Task 6
% sibling(X, Y) % X and Y are siblings if they have the same parent % (includes half brothers and half sisters).sibling(X,Y):- 	parent(Z,X), 	parent(Z,Y).% cousin(X, Y) % X and Y are cousins if X and Y:s parents are siblings.cousin(X,Y):- 	parent(Z,X), 	parent(W,Y), 	sibling(Z,W).% second_cousin(X, Y) % X and Y are second cousins if X and Y:s parents are cousins.second_cousin(X,Y):- 	parent(Z,X), 	parent(W,Y), 	cousin(Z,W).