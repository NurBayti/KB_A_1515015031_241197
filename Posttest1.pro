predicates
nondeterm menyukai_peran (symbol,symbol)
nondeterm aktor (symbol)
nondeterm peran (symbol)
nondeterm juga (symbol,symbol)

clauses 
menyukai_peran(X,Y):-
	juga (X,Y),
	aktor (X),
	peran (Y).
	

menyukai_peran (iki, majikan):-
menyukai_peran (ayu, pembantu).
menyukai_peran (ani, tukang_kebun).
menyukai_peran (sri, penjahat).
menyukai_peran (tini, majikan).

aktor (iki).
aktor (ani).
aktor (ayu).
aktor (tini).
aktor (sri).

peran (pembantu).
peran (majikan).
peran (supir).
peran (tukang_kebun).
peran (penjahat).

juga (ayu, pembantu).
juga (tini, penjahat).
juga (ani, supir).
juga (sri, tukang_kebun).
juga (iki, majikan).

goal
menyukai_peran (X,majikan);
menyukai_peran (ayu,pembantu).




	
