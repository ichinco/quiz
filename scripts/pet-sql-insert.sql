delete from result_set_result;
delete from result;

insert into result (id,version,class,name,affectionate,weekly_time_min,weekly_time_max,monthly_cost,trainable,min_equipment,max_equipment,lifespan,noisy,needs_outdoor_space,live_food,nocturnal,smelly,min_initial_cost,max_initial_cost,is_contained,allergic) VALUES
(1,0,'quiz.Pet','dog',TRUE,14,40,400,TRUE,100,100,10,TRUE,TRUE,FALSE,FALSE,FALSE,50,1000,FALSE,FALSE),
(2,0,'quiz.Pet','cat',FALSE,3,50,100,FALSE,100,100,15,FALSE,FALSE,FALSE,TRUE,TRUE,50,1000,FALSE,TRUE),
(3,0,'quiz.Pet','turtle',FALSE,2,40,80,FALSE,300,300,40,FALSE,FALSE,FALSE,TRUE,TRUE,10,250,TRUE,FALSE),
(4,0,'quiz.Pet','fish',FALSE,2,5,5,FALSE,10,40,3,FALSE,FALSE,FALSE,FALSE,FALSE,2,20,TRUE,FALSE),
(5,0,'quiz.Pet','rabbit',FALSE,1,9,40,TRUE,50,200,6,FALSE,FALSE,FALSE,FALSE,FALSE,5,75,TRUE,TRUE),
(6,0,'quiz.Pet','flemish giant rabbit',TRUE,3,9,40,TRUE,50,200,10,FALSE,FALSE,FALSE,FALSE,FALSE,50,400,FALSE,TRUE),
(7,0,'quiz.Pet','hedgehog',FALSE,2,10,20,TRUE,30,150,10,FALSE,FALSE,FALSE,TRUE,FALSE,100,375,TRUE,TRUE),
(8,0,'quiz.Pet','gerbil',TRUE,2,20,30,TRUE,40,60,4,FALSE,FALSE,FALSE,FALSE,TRUE,5,15,TRUE,TRUE),
(9,0,'quiz.Pet','hamster',TRUE,2,5,11,TRUE,40,60,3,FALSE,FALSE,FALSE,TRUE,TRUE,6,30,FALSE,TRUE),
(10,0,'quiz.Pet','rat',TRUE,2,20,30,TRUE,10,50,3,FALSE,FALSE,FALSE,TRUE,TRUE,10,50,TRUE,TRUE),
(11,0,'quiz.Pet','snake',FALSE,10,50,100,FALSE,30,200,20,FALSE,FALSE,TRUE,FALSE,FALSE,20,150,TRUE,FALSE),
(12,0,'quiz.Pet','chameleon',FALSE,1,25,50,FALSE,200,200,7,FALSE,FALSE,TRUE,FALSE,FALSE,40,1000,TRUE,FALSE),
(13,0,'quiz.Pet','lizard',FALSE,1,40,125,FALSE,20,550,5,FALSE,FALSE,FALSE,FALSE,FALSE,5,150,TRUE,FALSE),
(14,0,'quiz.Pet','guinea pig',TRUE,1,20,30,TRUE,40,60,8,FALSE,FALSE,FALSE,FALSE,TRUE,35,100,TRUE,TRUE),
(15,0,'quiz.Pet','gecko',FALSE,1,15,30,FALSE,100,100,7,FALSE,FALSE,TRUE,TRUE,FALSE,20,70,TRUE,FALSE),
(16,0,'quiz.Pet','ferret',TRUE,8,50,70,TRUE,150,300,6,FALSE,FALSE,FALSE,FALSE,TRUE,100,200,FALSE,TRUE),
(17,0,'quiz.Pet','parrot',TRUE,2,75,75,TRUE,100,100,40,TRUE,FALSE,FALSE,FALSE,TRUE,800,1000,TRUE,TRUE),
(18,0,'quiz.Pet','betta fish',FALSE,2,5,5,FALSE,10,40,3,FALSE,FALSE,FALSE,FALSE,FALSE,2,10,TRUE,FALSE),
(19,0,'quiz.Pet','goldfish',FALSE,2,5,5,FALSE,10,40,6,FALSE,FALSE,FALSE,FALSE,FALSE,2,5,TRUE,FALSE),
(20,0,'quiz.Pet','chinchilla',TRUE,2,20,50,TRUE,50,50,10,FALSE,FALSE,FALSE,TRUE,FALSE,125,350,TRUE,TRUE),
(21,0,'quiz.Pet','hermit crab',FALSE,1,5,5,FALSE,10,35,1,FALSE,FALSE,FALSE,TRUE,FALSE,4,12,TRUE,FALSE),
(22,0,'quiz.Pet','cockatiel',TRUE,2,125,125,TRUE,450,1400,20,TRUE,FALSE,FALSE,FALSE,TRUE,800,3000,TRUE,TRUE),
(23,0,'quiz.Pet','pig',TRUE,2,50,200,TRUE,100,100,20,TRUE,FALSE,FALSE,FALSE,FALSE,500,6000,FALSE,FALSE)
