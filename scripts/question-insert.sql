delete from path;
delete from question;
delete from result_set_result;
delete from result_set;

insert into question (id,version,text,yes_text,no_text,blurb) VALUES
------------- spend less than $30/month to care for pet ----------------------------
(1,0,'Do you want a pet that you can play with?','yes, I want to play with my pet.','no, I would rather have a pet that you just watch.','Different pets need (or can tolerate) different amounts of attention. Dogs crave feedback from their owners, while hamstes and gerbils don''t mind being handled or petted. On the other hand, reptiles would rather be left alone, and you positively can''t handle a fish at all!'),
-- no : beta fish, goldfish, fish
-- yes
(2,0,'Many years are you planning to spend with your pet?','I want to have a pet for more than 5 years','I want to have a pet for less than 5 years','This is a really important question! If you move frequently or are buying the pet for a child who may lose interest easily, you may want to consider a pet who has a shorter natural lifespan. On the otherhand, if you are buying a companion, you may not want to endure the loss of a pet.'),
--- more: hedgehog
--- less: hermit crab, hamster

------------- less than 10 hrs to care for pet / week -------------------------------
(3,0,'How much do you want to spend (per month) on your pet?','I can spent more than $15 per month','I can only spend $15 or less','What''s your budget for your pet? If you can spend more money, you can get a more exotic or resource hungry pet, but if you are on a limited budget, don''t worry-- there are plenty of animals that won''t break the bank!'),
--- more than 15
(4,0,'Do you have space for a pet to roam freely?','yes, I have plenty of space','no, I need a pet that primarily lives in a tank or small cage.','Think about this question in terms of your current living space, and also whether (and where) you might move in the next couple of years. On the one hand, pets that roam freely feel more like members of the family, with their own sense of self-determination, but do you have the time and energy to pet-proof a home, and deal with potential messes?'),
----- yes : flemish giant
----- no : rabbit

--- less than 15
(5,0,'Do you want your pet to be a mammal?','yes, I prefer furry pets.','no, I would rather have a fish, reptile, or bird','This is question of personal preference. Many people find mammals more easy to relate to, but reptiles feel exotic and fascinating and fish are more relaxing to watch.'),
---- yes: hamster
---- no: fish, betafish, goldfish, hermit crab

---------------- no space to roam freely -----------------------------------------------
(6,0,'How much can you spend (per month) on a pet?','I can spend more than $50','I can only spend less than $50','If you have a limited budget, don''t worry. There are plenty of pets that require less upkeep every month. However, if you have more money to spend, you can sometimes get a more exotic pet. Either way, it''s important to be honest with yourself about what you can afford so you don''t shortchange your pet.'),
-- less than 50
(7,0,'Do you want a pet you can play with?','I want to play with pet','I just want to watch my pet', 'This is a question of personal preference! Do you want a pet you can hold or cuddle with, or would you rather have a hands-off pet. Pets that you watch tend to be quieter and slower moving.'),
--- play
(8,0,'How long do you want your pet to live?','I want my pet to live more than 6 years','I can commit to fewer than 6 years with a pet', 'How many years are you planning to spend with your pet? Are you looking for a long-term relationship, a pet who becomes a member of your family? Or do you move often or are buying the pet for a child who may lose interest?'),
---- less : rabbit, gerbil, rat
---- more : hedgehog, guinea pig

--- just watch
(9,0,'How much time (per week) can you spend taking care of your pet?','I can spend more than 5 hrs taking care of a pet','I only have 5 hrs or less to take care of a pet.','If you have a lot of time to take care of a pet, your pet will be slightly more exciting. But if you travel a lot or are very busy, it''s probably better for both you and your pet if you pick one that doesn''t require too much care.'),
---- more than 5 hrs: gecko, betafish
---- less than 5 hrs: fish, goldfish, hermit crab

-- spend more than 50
(10,0,'How long would you like your pet to live?','I want to spend more than 10 years with my pet','I can only commit to 10 years or fewer','If you want to form a long-term relationship with your pet, then you want it to live as long as possible. However, there are many reasons why you might want a pet to have a shorter natural lifespan: if you move around a lot, or you think the novelty of having a pet will wear off quickly, for instance.'),
--- less than 10
(11,0,'What species do you prefer?','I want a mammal','I want a reptile','It''s easier to relate to a mammalian pet, with their furry exteriors and familiar behaviors. However, you might also want a species that''s slightly foreign, it can be more fun to watch them and can be a real learning experience for a child.'),
---- mammal : chinchilla
(12,0,'Are you comfortable feeding your pet live food?','yes, live food is no problem for me','no, I would rather feed my pet pellets or powder','Whether you are willing to feed your pet live food is a huge consideration when thinking about getting a reptile. On the one hand, watching an animal hunt its prey (especially when the prey is an unsympathetic insect) can be a lot of fun! On the other, it''s hard to buy live food in bulk, so you''ll spend time running down to the pet store to get fresh ''''meat.'''' It can also become a problem if many of the insects escape in your house.'),
----- yes : chameleon
----- no : lizard
--- more than 10
(13,0,'How loud can your pet be?','Noise is not a problem','I cannot have a noisy pet.','Think about your neighbors! Do they live in the apartment upstairs, or are there miles between you and them?'),
---- loud: parrot, cocaktiel
---- silent:
(14,0,'Are you comfortable feeding your pet live food?','yes, live food is no problem for me','no, I would rather feed my pet pellets or powder','Whether you are willing to feed your pet live food is a huge consideration when thinking about getting a reptile. On the one hand, watching an animal hunt its prey can be a lot of fun! On the other, it''s hard to buy live food in bulk, so you''ll spend time running down to the pet store to get fresh ''''meat.'''' It can also become a problem if the ''''food'''' escapes into your house. And, finally, it may make some people uncomfortable... especially if you select a pet that requires larger prey.'),
----- yes: snake
----- no: turtle

-------------------------------- allergic to pet dander -------------------------------------
(15,0,'How much can you spend (per month) on a pet?','I can spend more than $100','I only have $100 or less to spend','If you have a lot of money to spend, you can definitely get a more exotic or interesting pet. However, don''t worry... there are plenty of pets that can be kept on much smaller budgets.'),
-- more than 100: lizard, pig, snake
-- less than 100:
(16,0,'How many years do you want your pet to live?','I want to spend more than 5 years with my pet','I can only commit to 5 years or fewer','Think about the relationship you imagine having with your pet. Do you imagine it becoming a part of your family, and you will mourn its loss? Or do you think that you will quickly lose interest and the continuous care will become a burden?')
-- more than 5 : turtle, chameleon, gecko
-- less than 5 : fish, betafish, goldfish, hermit crab
