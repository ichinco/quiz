package quiz

class Pet extends Result {

    String name;
    boolean affectionate;
    int weeklyTimeMin;
    int weeklyTimeMax;
    int monthlyCost;
    boolean trainable;
    int minEquipment
    int maxEquipment
    int lifespan
    boolean noisy
    boolean needsOutdoorSpace
    boolean liveFood
    boolean nocturnal
    boolean smelly
    int minInitialCost
    int maxInitialCost
    boolean isContained
    boolean allergic
    String imageUrl;
    String amazonLink;
    String amazonImage;

    static constraints = {
        affectionate(nullable:true)
        weeklyTimeMin(nullable:true)
        weeklyTimeMax(nullable:true)
        monthlyCost(nullable:true)
        trainable(nullable:true)
        minEquipment(nullable:true)
        maxEquipment(nullable:true)
        lifespan(nullable:true)
        noisy(nullable:true)
        needsOutdoorSpace(nullable:true)
        liveFood(nullable:true)
        nocturnal(nullable:true)
        smelly(nullable:true)
        minInitialCost(nullable:true)
        maxInitialCost(nullable:true)
        isContained(nullable:true)
        allergic(nullable:true)
        imageUrl(nullable:true)
        amazonLink(nullable:true)
        amazonImage(nullable:true)
    }

    @Override
    public String getResultName(){
        return name;
    }
}
