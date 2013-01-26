package quiz

class Pet extends Result {

    String name;

    static constraints = {
    }

    @Override
    public String getResultName(){
        return name;
    }
}
