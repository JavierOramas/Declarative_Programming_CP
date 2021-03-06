% Member
is_member(X,[X|_]).
is_member(X,[_|R]) :- is_member(X,R).

% Push
my_push([],L,L).
my_push([H|T],L,[H|L2]) :- my_push(T,L,L2).

% Pop
my_pop([_],[]).
my_pop([H|T], [H|Nt]) :- my_pop(T,Nt).

% Add
my_add(X, L, [X|L]).

% Insert
my_insert(_,[],[_]).
my_insert(X, [H|T], [X,H|T]).
my_insert(X, [H|T], [H|T2]) :- my_insert(X,T,T2).

% Delete
% Using dif to check if H id different than X
my_delete_all(_, [], []).
my_delete_all(X, [X|T], NT) :- my_delete_all(X,T,NT).
my_delete_all(X, [H|T], [H|NT]) :- my_delete_all(X,T,NT), dif(X,H).

% Reverse
my_reverse(L,R) :- my_reverse(L,[],R).

my_reverse([],Y,R) :- Y = R.

my_reverse([H|T] , Y, R) :-
    my_reverse(T, [H|Y], R).

% Delete First Occurrence
my_delete_first(_, [], []).
my_delete_first(X, [X|T], T).
my_delete_first(X, [H|T], [H|R]) :- my_delete_first(X, T, R).

% Delete last occurrence
my_delete_last_occurrence(X,L,R) :-
    my_reverse(NL,R),
    my_delete_first(X,Rev,NL),
    my_reverse(L,Rev).

% Permutation
my_permutation([], []).
my_permutation([H|T],R) :- is_member(H,R), my_delete_first(H,R,NR), my_permutation(T,NR).

% Palindrome
my_palindrome(X) :- my_reverse(X,R), R = X.

% Subset
my_subset([],_).
my_subset([H|T],Y) :- is_member(H,Y), my_delete_first(H,Y,NR), my_subset(T,NR).

% aux see if item is head in list
my_first_equal(X,[H|_]) :- X = H.

% Consecutive
my_consecutive(X,Y,[H|T]) :- X = H, my_first_equal(Y,T).
my_consecutive(X,Y,[_|T]) :- my_consecutive(X,Y,T).