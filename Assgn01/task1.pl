% Task 1
% Three friends puzzle

% Creates the possible solutions for the given logic puzzle
solve :-
  % Tick, Trick and Track are friends
  Friends = [  ["Tick",Tick_Age,Tick_Lastname],
                ["Trick",Trick_Age,Trick_Lastname],
                ["Track",Track_Age,Track_Lastname]],

  % One friend is 15, one 17, and one 18 years but we do not know who has which age
  member([_,15,_],Friends),
  member([_,17,_],Friends),
  member([_,18,_],Friends),

  % One friend’s last name is Chang
  member([_,_,"Chang"],Friends),

  % Miss Yang is three years older than Tick
  member([_,X,"Yang"],Friends),
  member(["Tick",Y,_],Friends),
  X is Y+3,

  % The person whose last name is Thatcher is 17 years old
  member([_,17,"Thatcher"],Friends),

  % Display result as formatted sentences
  display("Tick",Tick_Age,Tick_Lastname),
  display("Trick",Trick_Age,Trick_Lastname),
  display("Track",Track_Age,Track_Lastname).

display(X, Y, Z) :-
  write(X), write(' '), write(Z), write(' is '), write(Y), write(' years old.'), nl.
