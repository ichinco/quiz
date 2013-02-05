package quiz

class Question {

    String text;
    String yesText;
    String noText;
    String blurb;

    static constraints = {
    }

    static mapping = {
        blurb length: 1100
    }
}
