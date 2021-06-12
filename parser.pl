noun(noun(shed)) --> [shed].
noun(noun(room)) --> [room].
noun(noun(school)) --> [school].
noun(noun(building)) --> [building].
noun(noun(box)) --> [box].
noun(noun(girl)) --> [girl].
noun(noun(scientists)) --> [scientists].
noun(noun(boy)) --> [boy].
noun(noun(car)) --> [car].
noun(noun(tree)) --> [tree].
noun(noun(woman)) --> [woman].
noun(noun(man)) --> [man].
noun(noun(students)) --> [students].
noun(noun(lecturers)) --> [lecturers].
noun(noun(envelope)) --> [envelope].
noun(noun(apartment)) --> [apartment].
noun(noun(professors)) --> [professors].
noun(noun(researchers)) --> [researchers].
noun(noun(fox)) --> [fox].
noun(noun(motorcycle)) --> [motorcycle].
noun(noun(mouse)) --> [mouse].
noun(noun(keyboard)) --> [keyboard].



det(det(these)) --> [these].
det(det(the)) --> [the].
det(det(an)) --> [an].
det(det(many)) --> [many].
det(det(some)) --> [some].
det(det(a)) --> [a].
det(det(every)) --> [every].




adj(adj(white)) --> [white].
adj(adj(bright)) --> [bright].
adj(adj(empty)) --> [empty].
adj(adj(young)) --> [young].
adj(adj(big)) --> [big].
adj(adj(large)) --> [large].
adj(adj(talented)) --> [talented].
adj(adj(poor)) --> [poor].
adj(adj(old)) --> [old].
adj(adj(brilliant)) --> [brilliant].
adj(adj(rich)) --> [rich].
adj(adj(small)) --> [small].
adj(adj(little)) --> [little].
adj(adj(fast)) --> [fast].
adj(adj(slow)) --> [slow].
adj(adj(dark)) --> [dark].
adj(adj(bright)) --> [bright].
adj(adj(confident)) --> [confident].
adj(adj(kind)) --> [kind].
adj(adj(happy)) --> [happy].




adjOneOrMore(adjOneOrMore(ADJ1, ADJ2)) --> adj(ADJ1), adjOneOrMore(ADJ2).
adjOneOrMore(adjOneOrMore(ADJ)) --> adj(ADJ).
   
adv(adv(quickly)) --> [quickly].
adv(adv(usaully)) --> [usaully].
adv(adv(simply)) --> [simply].
adv(adv(slowly)) --> [slowly].
adv(adv(probably)) --> [probably].
adv(adv(directly)) --> [directly].
adv(adv(finally)) --> [finally].
adv(adv(properly)) --> [properly].
adv(adv(daily)) --> [daily].
adv(adv(weekly)) --> [weekly].
adv(adv(widely)) --> [widely].
adv(adv(recently)) --> [recently].
adv(adv(clearly)) --> [clearly].

verb(verb(appreciated)) --> [appreciated].
verb(verb(climbed)) --> [climbed].
verb(verb(stored)) --> [stored].
verb(verb(admired)) --> [admired].
verb(verb(watched)) --> [watched].
verb(verb(pushed)) --> [pushed].
verb(verb(did)) --> [did].
verb(verb(ran)) --> [ran].
verb(verb(moved)) --> [moved].
verb(verb(played)) --> [played].
verb(verb(enjoyed)) --> [enjoyed].
verb(verb(drove)) --> [drove].
verb(verb(fell)) --> [fell].
verb(verb(walked)) --> [walked].
verb(verb(looked)) --> [looked].
verb(verb(asked)) --> [asked].
verb(verb(needed)) --> [needed].
verb(verb(felt)) --> [felt].
verb(verb(became)) --> [became].
verb(verb(got)) --> [got].
verb(verb(gave)) --> [gave].
verb(verb(died)) --> [died].

infverb(infverb(hit)) --> [hit].
infverb(infverb(fail)) --> [fail].
infverb(infverb(learn)) --> [learn].
infverb(infverb(say)) --> [say].
infverb(infverb(do)) --> [do].


advOneOrMore(advOneOrMore(ADV1, ADV2)) --> adv(ADV1), advOneOrMore(ADV2).
advOneOrMore(advOneOrMore(ADV)) --> adv(ADV).

preposition(preposition(after)) --> [after].
preposition(preposition(in)) --> [in].
preposition(preposition(behind)) --> [behind].
preposition(preposition(at)) --> [at].
preposition(preposition(from)) --> [from].
preposition(preposition(into)) --> [into].
preposition(preposition(until)) --> [until].
preposition(preposition(among)) --> [among].
preposition(preposition(about)) --> [about].
preposition(preposition(like)) --> [like].
preposition(preposition(without)) --> [without].
preposition(preposition(with)) --> [with].

pronoun(pronoun(my)) --> [my].

pronoun(pronoun(who)) --> [who].
intpronoun(intpronoun(what)) --> [what].


conjunction(conjunction(and)) --> [and].
conjunction(conjunction(while)) --> [while].

s(s(INPUT)) --> sentenceOneOrMore(INPUT).
sentenceOneOrMore(sentenceOneOrMore(NC)) --> nounClause(NC).
sentenceOneOrMore(sentenceOneOrMore(NC, CONJ, VC)) --> nounClause(NC), conjunction(CONJ), verbClause(VC).
sentenceOneOrMore(sentenceOneOrMore(NC, CONJ, VC,S)) --> nounClause(NC), conjunction(CONJ), verbClause(VC), sentenceOneOrMore(S).
sentenceOneOrMore(sentenceOneOrMore(NC, CONJ, S)) --> nounClause(NC), conjunction(CONJ), sentenceOneOrMore(S).
sentenceOneOrMore(sentenceOneOrMore(NC)) --> nounClause(NC).

infnounPhrase(infnounPhrase(PP)) --> infpronounPhrase(PP).
nounPhrase(nounPhrase(PP)) --> pronounPhrase(PP).
nounPhrase(nounPhrase(N, PP)) --> noun(N), pronounPhrase(PP).
nounPhrase(nounPhrase(DET, ADJ, N, PP)) --> det(DET), adjOneOrMore(ADJ), noun(N), pronounPhrase(PP).
nounPhrase(nounPhrase(DET, ADJ, N)) --> det(DET), adjOneOrMore(ADJ), noun(N).
nounPhrase(nounPhrase(N)) --> noun(N).
nounPhrase(nounPhrase(DET, N, PP)) --> det(DET), noun(N), pronounPhrase(PP).
nounPhrase(nounPhrase(ADJ, N)) --> adjOneOrMore(ADJ), noun(N).
nounPhrase(nounPhrase(ADJ, N, PP)) --> adjOneOrMore(ADJ), noun(N), pronounPhrase(PP).
nounPhrase(nounPhrase(DET, N)) --> det(DET), noun(N).

nounPhraseOneOrMore(nounPhraseOneOrMore(NP1)) --> nounPhrase(NP1).
nounPhraseOneOrMore(nounPhraseOneOrMore(NP1, CONJ, NP2)) --> nounPhrase(NP1), conjunction(CONJ), nounPhraseOneOrMore(NP2).

verbPhrase(verbPhrase(V)) --> verb(V).
verbPhrase(verbPhrase(V, ADV)) --> verb(V), advOneOrMore(ADV).
verbPhrase(verbPhrase(ADV, V)) --> advOneOrMore(ADV), verb(V).
verbPhrase(verbPhrase(V)) --> verb(V).

infVerbPhrase(infVerbPhrase(V)) --> infverb(V).
infVerbPhrase(infVerbPhrase(ADV,V)) --> advOneOrMore(ADV),infverb(V).

verbPhraseOneOrMore(verbPhraseOneOrMore(VP1, CONJ, VP2)) --> verbPhrase(VP1), conjunction(CONJ), verbPhraseOneOrMore(VP2).
verbPhraseOneOrMore(verbPhraseOneOrMore(VP1)) --> verbPhrase(VP1).
infverbPhraseOneOrMore(infverbPhraseOneOrMore(VP1)) --> infVerbPhrase(VP1).
infverbPhraseOneOrMore(infverbPhraseOneOrMore(VP1, CONJ, VP2)) --> infVerbPhrase(VP1), conjunction(CONJ), infverbPhraseOneOrMore(VP2).

prepPhraseOneOrMore(prepPhraseOneOrMore(P1, NP, P2)) --> preposition(P1), nounPhraseOneOrMore(NP), prepPhraseOneOrMore(P2).
prepPhraseOneOrMore(prepPhraseOneOrMore(P, NP)) --> preposition(P), nounPhraseOneOrMore(NP).

infpronounPhrase(pronounPhrase(PR,V,NP)) --> intpronoun(PR),verb(V), nounPhraseOneOrMore(NP).
infpronounPhrase(pronounPhrase(PR,V,NP)) --> pronoun(PR),verb(V), nounPhraseOneOrMore(NP).
pronounPhrase(pronounPhrase(PR, VP, P)) --> pronoun(PR), verbPhraseOneOrMore(VP), prepPhraseOneOrMore(P).
%pronounPhrase(pronounPhrase(PR, VP)) --> pronoun(PR), verbPhraseOneOrMore(VP).
pronounPhrase(pronounPhrase(PR, VP, NP)) --> pronoun(PR), verbPhraseOneOrMore(VP), nounPhraseOneOrMore(NP).
pronounPhrase(pronounPhrase(PR, VP, NP, P)) --> pronoun(PR), verbPhraseOneOrMore(VP), nounPhraseOneOrMore(NP), prepPhraseOneOrMore(P).

%nounClause(nounClause(NP, VP, P)) --> nounPhraseOneOrMore(NP), verbPhraseOneOrMore(VP), prepPhraseOneOrMore(P).
nounClause(nounClause(NP1, VP,CONJ, NP2)) --> nounPhraseOneOrMore(NP1), conjunction(CONJ),verbPhraseOneOrMore(VP), nounPhraseOneOrMore(NP2).
nounClause(nounClause(NP1, VP, NP2,NP3,P)) --> nounPhraseOneOrMore(NP1), verbPhraseOneOrMore(VP), nounPhraseOneOrMore(NP2),nounPhraseOneOrMore(NP3), prepPhraseOneOrMore(P).
nounClause(nounClause(NP1, VP, NP2,NP3)) --> nounPhraseOneOrMore(NP1), verbPhraseOneOrMore(VP), nounPhraseOneOrMore(NP2),nounPhraseOneOrMore(NP3).
nounClause(nounClause(NP)) --> nounPhraseOneOrMore(NP).
nounClause(nounClause(NP,VP)) --> nounPhraseOneOrMore(NP), infverbPhraseOneOrMore(VP).
nounClause(nounClause(NP,VP)) --> nounPhraseOneOrMore(NP), verbPhraseOneOrMore(VP).
nounClause(nounClause(NP, VP)) --> infnounPhrase(NP), infverbPhraseOneOrMore(VP).
nounClause(nounClause(NP, VP,P,VC)) --> infnounPhrase(NP), infverbPhraseOneOrMore(VP), prepPhraseOneOrMore(P),verbClause(VC).

nounClause(nounClause(NP1, VP, NP2, P)) --> nounPhraseOneOrMore(NP1), verbPhraseOneOrMore(VP), nounPhraseOneOrMore(NP2), prepPhraseOneOrMore(P).
nounClause(nounClause(NP1, VP, NP2)) --> nounPhraseOneOrMore(NP1), verbPhraseOneOrMore(VP), nounPhraseOneOrMore(NP2).
nounClause(nounClause(NP, P, VP)) --> nounPhraseOneOrMore(NP), prepPhraseOneOrMore(P), verbPhraseOneOrMore(VP).

verbClause(verbClause(VP, NP, P)) --> verbPhraseOneOrMore(VP), nounPhraseOneOrMore(NP), prepPhraseOneOrMore(P).
verbClause(verbClause(VP, NP)) --> verbPhraseOneOrMore(VP), nounPhraseOneOrMore(NP).
verbClause(verbClause(VP)) --> verbPhraseOneOrMore(VP).