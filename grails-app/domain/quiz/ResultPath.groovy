package quiz

class ResultPath extends Path {

    ResultSet resultSet;

    static constraints = {
    }

    @Override
    int getPathId() {
        return resultSet.id;
    }
}
