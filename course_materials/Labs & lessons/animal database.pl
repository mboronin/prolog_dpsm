feline(X):-	
	cat(X).	
feline(X):- 	
	big_cat(X).			
feline(X):- 
	cheetah(X).
			
cat(X):- 
	domestic_cat(X).	
cat(X):- 	
	wildcat(X).
			
big_cat(X):- 	
	panther(X).		
big_cat(X):- 	
	tiger(X).	
big_cat(X):-	
	leopard(X).
			
cheetah(X):- 
	hunting_leopard(X).	

tiger('Shere-Khan').
tiger('Amur').

panther('Bagheera').

domestic_cat('Mjau').

hunting_leopard('Juba').

colour('Jarvis','Yellow').
colour('Leo','Yellow').
colour('Louis','Yellow').
colour('Blackie','Black').

speckled('Jarvis').
speckled('Leo').