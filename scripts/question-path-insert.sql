delete from path;

insert into path (id, version, question_id, choice, class, followup_question_id, result_set_id) VALUES
(1,0,1,1,'quiz.QuestionPath',2,null),
(2,0,1,0,'quiz.ResultPath',null,1),
(3,0,2,1,'quiz.ResultPath',null,2),
(4,0,2,0,'quiz.ResultPath',null,3),
(5,0,3,1,'quiz.QuestionPath',4,null),
(6,0,3,0,'quiz.QuestionPath',5,null),
(7,0,4,1,'quiz.ResultPath',null,4),
(8,0,4,0,'quiz.ResultPath',null,5),
(9,0,5,1,'quiz.ResultPath',null,6),
(10,0,5,0,'quiz.ResultPath',null,7),
(11,0,6,1,'quiz.QuestionPath',7,null),
(12,0,6,0,'quiz.QuestionPath',10,null),
(13,0,7,1,'quiz.QuestionPath',8,null),
(14,0,7,0,'quiz.QuestionPath',9,null),
(15,0,8,1,'quiz.ResultPath',null,8),
(16,0,8,0,'quiz.ResultPath',null,9),
(17,0,9,1,'quiz.ResultPath',null,10),
(18,0,9,0,'quiz.ResultPath',null,11),
(19,0,10,1,'quiz.QuestionPath',13,null),
(20,0,10,0,'quiz.QuestionPath',11,null),
(21,0,11,1,'quiz.ResultPath',null,12),
(22,0,11,0,'quiz.QuestionPath',12,null),
(23,0,12,1,'quiz.ResultPath',null,13),
(24,0,12,0,'quiz.ResultPath',null,14),
(25,0,13,1,'quiz.ResultPath',null,15),
(26,0,13,0,'quiz.QuestionPath',14,null),
(27,0,14,1,'quiz.ResultPath',null,16),
(28,0,14,0,'quiz.ResultPath',null,17),
(29,0,15,1,'quiz.ResultPath',null,18),
(30,0,15,0,'quiz.QuestionPath',16,null),
(31,0,16,1,'quiz.ResultPath',null,19),
(32,0,16,0,'quiz.ResultPath',null,20)
