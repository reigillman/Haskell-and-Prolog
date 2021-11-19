%Rei Gillman

parent(david, john).
parent(silvia,maria).
parent(silvia,gill).
parent(gill,jose).
parent(john,anna).
parent(maria,anna).
parent(john,marco).
parent(maria,marco).

male(david).
male(john).
male(marco).
male(gill).
female(silvia).
female(maria).
female(anna).

sibling(X,Y) :- parent(Z,X),parent(Z,Y),X\=Y.
%X = maria,Y = gill ;X = gill,Y = maria ;X = anna,Y = marco ;X = anna,Y = marco ;
%X = marco,Y = anna ;X = marco,Y = anna

aunt(X,Y) :- female(X),sibling(X,Z),parent(Z,Y).
%X = maria,Y = jose

uncle(X,Y) :- male(X),sibling(X,Z),parent(Z,Y).
%X = gill,Y = anna ;X = gill,Y = marco

cousin(X,Y) :- parent(Z,X),parent(W,Y),sibling(Z,W).
%X = jose,Y = anna ;X = jose,Y = marco ;X = anna,Y = jose ;X = marco,Y = jose