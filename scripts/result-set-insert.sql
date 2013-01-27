delete from result_set_result;
delete from result_set;

insert into result_set (id, version) VALUES
(1,0), -- < 30, can't play with
(2,0), -- < 30, can play with, long life
(3,0), -- < 30, can play with, short life
(4,0), -- < 10 hrs, > $15, roam
(5,0), -- < 10 hrs, > $15, no roam
(6,0), -- < 10 hrs, < $15, mammal
(7,0), -- < 10 hrs, <$15, nonmammal
(8,0), -- no space, <$50, play with, >6years
(9,0), -- no space, <$50, play with, <6years
(10,0), -- no space, <$50, watch, > 5hrs
(11,0), -- no space, <$50, watch, < 5 hrs
(12,0), -- no space, >$50, <10years, mammal
(13,0), -- no space, >$50, <10years, live food
(14,0), -- no space, >$50, <10years, dead food
(15,0), -- no space, >$50, >10years, loud
(16,0), -- no space, >$50, >10years, silent, live food
(17,0), -- no space, >$50, >10years, silent, dead food
(18,0), -- allergic, >$100
(19,0), -- allergic, <$100, >5yr
(20,0); -- allergic, <$100, <5yr

insert into result_set_result (id, version, result_set_id, result_id) VALUES
(1,0,1,18), -- beta
(2,0,1,19), -- goldfish
(3,0,1,4), -- fish
(4,0,2,7), -- hedgehog
(5,0,3,21), -- hermit crab
(6,0,3,9), -- hamster
(7,0,4,6), -- flemish
(8,0,5,5), -- rabbit
(9,0,6,9), -- hamster
(10,0,7,4), -- fish
(11,0,7,18), -- betafish
(12,0,7,19), -- goldfish
(13,0,7,21), -- hermit
(14,0,8,7), -- hedgehog
(15,0,8,14), -- guinea
(16,0,9,5), -- rabbit
(17,0,9,8), -- gerbil
(18,0,9,10), -- rat
(19,0,10,15), -- gecko
(20,0,10,18), -- betafish
(21,0,11,4), -- fish
(22,0,11,19), -- goldfish
(23,0,11,21), -- hermitcrab
(24,0,12,20), -- chinchilla
(25,0,13,12), -- chameleon
(26,0,14,13), -- lizard
(27,0,15,17), -- parrot
(28,0,15,22), -- cockatiel
(29,0,16,11), -- snake
(30,0,16,3), -- turtle
(31,0,17,13), -- lizard
(32,0,17,23), -- pig
(33,0,17,11), -- snake
(34,0,18,4), -- fish
(35,0,18,18), -- betafish
(36,0,18,19), -- goldfish
(37,0,18,21) -- hermit
