% member(["Tick","Trick","Track"],[15,17,18],["Chang","Yang","Thatcher"])
%
% person(_,_,"Chang")
% Yang is Tick + 3
% person(_,17,"Thatcher")

name("Tick").
name("Trick").
name(track).

age(15).
age(17).
age(18).

lastname(chang).
lastname(yang).
lastname(thatcher).

solve :-
  Solution = [  [tick,TickAge,TickLastname],
                [trick,TrickAge,TrickLastname],
                [track,TrackAge,TrackLastname]],

  member([_,15,_],Solution),
  member([_,17,_],Solution),
  member([_,18,_],Solution),

  member([_,_,chang],Solution),

  member([_,X,yang],Solution),
  member([tick,Y,_],Solution),
  X is Y+3,

  member([_,17,thatcher],Solution),

  tell(tick,TickAge,TickLastname),
  tell(trick,TrickAge,TrickLastname),
  tell(track,TrackAge,TrackLastname).

tell(X, Y, Z) :-
  write(X), write(' '), write(Z), write(' is '), write(Y), write(' years old.'), nl.
