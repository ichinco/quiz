package quiz

class ResultSetResult {

    ResultSet resultSet;
    Result result;

    static constraints = {
    }

    static mapping = {
        result fetch:"join"
    }
}
