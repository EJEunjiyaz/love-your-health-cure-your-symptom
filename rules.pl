:- use_module(facts,[]).

vet_restore_symptom(X,Y) :- facts:vit_cure_symptom(Z,Y), facts:contain_vit(X,Z).
vet_restore_organ(X,Y) :- facts:vet_restore_symptom(X,Z), facts:symptom_in_organ(Z,Y).
vit_cure_organ(X,Y) :-  facts:vit_cure_symptom(X,Z), facts:symptom_in_organ(Z,Y).
same_vit(X,Y) :- facts:contain_vit(X,Z), facts:contain_vit(Y,Z).
same_type(X,Y) :- ((facts:fruit(X), facts:fruit(Y));(facts:vegetable(X), facts:vegetable(Y))).