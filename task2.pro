predicates
    nondeterm likes(symbol,symbol)
    can_buy(symbol,symbol)
    nondeterm person(symbol)
    nondeterm item(symbol)
    nondeterm for_sale(symbol)
clauses
    person(ellen).
    person(john).
    person(tom).
    person(eric).
    person(mark).
    item(sword).
    item(house).
    item(dragon).
    likes(ellen, house). 
    likes(john, sword).
    likes(tom, dragon).
    likes(eric, sword).
    likes(mark, sword).
    for_sale(house).
    for_sale(sword).
    can_buy(X,Y):-
        person(X),
        item(Y),
        likes(X,Y),
        for_sale(Y).
goal
    can_buy(mark,sword).