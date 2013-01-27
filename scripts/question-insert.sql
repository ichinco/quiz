delete from path;
delete from question;
delete from result_set_result;
delete from result_set;

insert into question (id,version,text,yes_text,no_text) VALUES
------------- spend less than $30/month to care for pet ----------------------------
(1,0,'Do you want a pet that you can play with?','yes','no'),
-- no : beta fish, goldfish, fish
-- yes
(2,0,'How long do you want the pet to live?','more than 5 years','less than 5 years'),
--- more: hedgehog
--- less: hermit crab, hamster

------------- less than 10 hrs to care for pet / week -------------------------------
(3,0,'How much do you want to spend (per month) on your pet?','more than $15','less than $15'),
--- more than 15
(4,0,'Do you have space for a pet to roam freely?','yes','no'),
----- yes : flemish giant
----- no : rabbit

--- less than 15
(5,0,'Do you want your pet to be a mammal?','yes','no'),
---- yes: hamster
---- no: fish, betafish, goldfish, hermit crab

---------------- no space to roam freely -----------------------------------------------
(6,0,'How much can you spend (per month) on a pet?','more than $50','less than $50'),
-- less than 50
(7,0,'Do you want a pet you can play with?','want to play with pet','just watch'),
--- play
(8,0,'How long do you want your pet to live?','more than 6 years','less than 6 years'),
---- less : rabbit, gerbil, rat
---- more : hedgehog, guinea pig

--- just watch
(9,0,'How much time (per week) can you spend taking care of your pet?','more than 5 hrs','less than 5 hrs'),
---- more than 5 hrs: gecko, betafish
---- less than 5 hrs: fish, goldfish, hermit crab

-- spend more than 50
(10,0,'How long would you like your pet to live?','more than 10 years','less than 10 years'),
--- less than 10
(11,0,'What species do you prefer?','mammal','reptile'),
---- mammal : chinchilla
(12,0,'Are you comfortable feeding your pet live food?','yes','no'),
----- yes : chameleon
----- no : lizard
--- more than 10
(13,0,'How loud can your pet be?','loud','silent'),
---- loud: parrot, cocaktiel
---- silent:
(14,0,'Are you comfortable feeding your pet live food?','yes','no'),
----- yes: snake
----- no: turtle

-------------------------------- allergic to pet dander -------------------------------------
(15,0,'How much can you spend (per month) on a pet?','more than $100','less than $100'),
-- more than 100: lizard, pig, snake
-- less than 100:
(16,0,'How many years do you want your pet to live?','more than 5 years','less than 5 years')
-- more than 5 : turtle, chameleon, gecko
-- less than 5 : fish, betafish, goldfish, hermit crab
