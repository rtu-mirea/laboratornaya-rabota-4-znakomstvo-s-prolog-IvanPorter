domains
	s=symbol
predicates
	nondeterm character(s)
	old_king(s)
	die(s)
	kinsman(s,s)
	battle(s)
	win_in_battle(s,s)
	nondeterm can_be_king(s)
	nondeterm become_new_king(s)
clauses
	character(richard).
	character(edvard).
	character(genrix).
	character(yorrik).
	old_king(edvard).
	die(edvard).
	die(richard).
	die(yorrik).
	kinsman(richard,edvard).
	kinsman(richard,genrix).
	kinsman(genrix,richard).
	kinsman(genrix,edvard).
	kinsman(edvard,richard).
	kinsman(edvard,genrix).
	battle(bosvort).
	win_in_battle(genrix,bosvort).
	
	can_be_king(X):-character(X),old_king(Y),die(Y),kinsman(X,Y).
	become_new_king(X):-can_be_king(X),battle(Z),win_in_battle(X,Z).
goal
	become_new_king(X).