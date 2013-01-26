package quiz

class QuestionPath extends Path {

    Question followupQuestion;

    static constraints = {
    }

    @Override
    int getPathId() {
        return followupQuestion.id;
    }
}
