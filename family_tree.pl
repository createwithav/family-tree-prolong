% Facts: Gender
male(john).
male(james).
male(mike).
male(jack).
male(tom).
female(mary).
female(lisa).
female(sarah).
female(jade).

% Facts: Parent Relationships
% parent(Parent, Child).
parent(john, james).
parent(john, lisa).
parent(mary, james).
parent(mary, lisa).

parent(james, jade).
parent(james, jack).
parent(sarah, jade).
parent(sarah, jack).

parent(lisa, tom).
parent(mike, tom).

% Rules

% A person is a grandparent of another if they are a parent of that person's parent.
grandparent(GP, GC) :-
    parent(GP, P),
    parent(P, GC).

% Two people are siblings if they share at least one parent and are not the same person.
sibling(X, Y) :-
    parent(P, X),
    parent(P, Y),
    X \= Y.

% Two people are cousins if their parents are siblings.
cousin(X, Y) :-
    parent(PX, X),
    parent(PY, Y),
    sibling(PX, PY).

% Recursion: A person X is a descendant of Y if Y is X's parent,
% or if X is a descendant of someone who is a child of Y.
descendant(X, Y) :-
    parent(Y, X).
descendant(X, Y) :-
    parent(Y, Z),
    descendant(X, Z).
