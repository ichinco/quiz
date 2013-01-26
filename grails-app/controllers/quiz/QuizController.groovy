package quiz

class QuizController {

    def index = { }

    def displayQuestion = {
        int id = Integer.parseInt(params.id)
        Question question = Question.findById(id);
        Path yesPath = Path.findByQuestionAndChoice(question, 1);
        Path noPath = Path.findByQuestionAndChoice(question, 0);

        def model = [:];
        model['question'] = question;
        model['yesAction'] = yesPath instanceof QuestionPath ? "displayQuestion" : "displayResult";
        model['noAction'] = noPath instanceof QuestionPath ? "displayQuestion" : "displayResult";
        model['yesId'] = yesPath.getPathId();
        model['noId'] = noPath.getPathId();

        render(view:"question", model:model)
    }

    def displayResult = {
        int id = Integer.parseInt(params.id)
        ResultSet set = ResultSet.findById(id);
        List<ResultSetResult> results = ResultSetResult.findAllByResultSet(set);

        def model = [:];
        model['results'] = results.collect { i ->
            return i.result
        };


        render(view:"result", model:model)
    }
}
