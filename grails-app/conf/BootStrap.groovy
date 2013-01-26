import quiz.Question
import quiz.Pet
import quiz.QuestionPath
import quiz.ResultSet
import quiz.ResultSetResult
import quiz.ResultPath

class BootStrap {

    def init = { servletContext ->

        Question affectionate = new Question();
        affectionate.text = "Do you want an affectionate pet?";
        affectionate.yesText = "yes";
        affectionate.noText = "no";
        affectionate.save();

        Question allergic = new Question();
        allergic.text = "Do you have many allergies?";
        allergic.yesText = "yes";
        allergic.noText = "no";
        allergic.save();

        Pet dog = new Pet();
        dog.name = "dog";
        dog.save()

        Pet cat = new Pet();
        cat.name = "cat";
        cat.save()

        Pet snake = new Pet();
        snake.name = "snake";
        snake.save()

        ResultSet nonAffectionate = new ResultSet();
        nonAffectionate.save();

        ResultSetResult nonAffectionateResult = new ResultSetResult();
        nonAffectionateResult.resultSet = nonAffectionate;
        nonAffectionateResult.result = snake;
        nonAffectionateResult.save()

        ResultSet affectionateNonAllergic = new ResultSet();
        affectionateNonAllergic.save();

        ResultSetResult affectionateNonAllergicResult = new ResultSetResult();
        affectionateNonAllergicResult.resultSet = affectionateNonAllergic;
        affectionateNonAllergicResult.result = dog;
        affectionateNonAllergicResult.save()

        ResultSet affectionateAllergic = new ResultSet();
        affectionateAllergic.save();

        ResultSetResult affectionateAllergicResult = new ResultSetResult();
        affectionateAllergicResult.resultSet = affectionateAllergic;
        affectionateAllergicResult.result = cat;
        affectionateAllergicResult.save()

        QuestionPath q1 = new QuestionPath()
        q1.question = affectionate;
        q1.followupQuestion = allergic;
        q1.choice = 1;
        q1.save();

        ResultPath q2 = new ResultPath()
        q2.question = affectionate;
        q2.resultSet = nonAffectionate;
        q2.choice = 0;
        q2.save()

        ResultPath q3 = new ResultPath()
        q3.question = allergic
        q3.resultSet = affectionateNonAllergic
        q3.choice = 1
        q3.save()

        ResultPath q4 = new ResultPath()
        q4.resultSet = affectionateAllergic
        q4.question = allergic
        q4.save()
    }
    def destroy = {
    }
}
