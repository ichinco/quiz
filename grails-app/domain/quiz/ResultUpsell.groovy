package quiz

class ResultUpsell {

    Result result
    String htmlDisplay

    static constraints = {
    }

    static mapping = {
        htmlDisplay length: 1000
    }
}
