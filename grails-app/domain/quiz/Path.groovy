package quiz

class Path {

    Question question;
    int choice;

    static constraints = {
    }

    static transients  = ["pathId"]

    public int getPathId() { return 0 };
}
