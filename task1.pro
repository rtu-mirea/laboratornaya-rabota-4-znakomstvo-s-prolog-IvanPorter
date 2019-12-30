domains
        s=symbol
    predicates
    nondeterm parent(s,s)
    nondeterm female(s)
    male(s)
    nondeterm mother(s,s)
    nondeterm father(s,s)
    ancestor(s,s)
    nondeterm child(s,s)
    nondeterm brother (s,s)
    nondeterm sister (s,s)
clauses
    parent(pam,bob).
    parent(tom,bob).
    parent(pam,richard).
    parent(tom,richard).
    parent(tom,liz).
    parent(bob,ann).
    parent(bob,pat).
    parent(pat,jim).
    parent(morgana,ann).
    parent(morgana,pat).
    female(pam).	
    female(liz).
    female(ann).
    female(pat).
    female(morgana).
    male(richard).
    male(tom).	
    male(bob).
    male(jim).
    child(Y,X):-	
    parent(X,Y).
    mother(X,Y):-	
    parent(X,Y),female(X). 
    father(X,Y):-	
    parent(X,Y),male(X). 
    ancestor(X,Z):-	
    parent(X,Z).	
    ancestor(X,Z):-	
    parent(X,Y),ancestor(Y,Z). 
    brother(X,Y):-father(Z,X),father(Z,Y),mother(M,X),mother(M,Y),male(X),male(Y).
    sister(X,Y):-father(Z,X),father(Z,Y),mother(M,X),mother(M,Y),female(X),female(Y).
goal
    brother(ann,bob).

    /*sister(ann,pat).*/