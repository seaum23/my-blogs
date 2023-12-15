In Singleton Pattern we have to make sure that a class has only one object.

We do that by making the constructor of singleton private and making a static method that can instantiate the object for us and later will return the same object.

```Java
class Singleton{
    private static Singleton instance;
    private Singleton{}

    public static Singleton getInstance(){
        if(instance == null){
            instance = new Singleton();
        }

        return instance; 
    }
}
```