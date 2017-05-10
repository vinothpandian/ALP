parent('Sermuga Pandian', 'Vinoth Pandian').
parent('Palanivel', 'Sermuga Pandian').
parent('Soundara Pandian', 'Nirmala').
parent('Nirmala', 'Vinoth Pandian').

ancestor(Anc,Desc):-parent(Anc,Desc).
ancestor(Anc,Desc):-parent(Anc,X),ancestor(X,Desc).
