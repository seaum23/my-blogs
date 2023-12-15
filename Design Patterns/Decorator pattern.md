## Definition
> ### *The decorator pattern attaches additional responsibilities to an object dynamically. Decorator provide an alternative to sub-classing.*

A decorator is a component and has the same component. What that means is that a decorator extends or implement the baseline component and also has an reference to the component.

```php
abstract class Beverage{
    abstract public function cost():int;
}

class Coffee{
    private int $cost = 10;

    public function cost():int{
        return $this->cost;
    }
}

abstract class BeverageDecorator extends Beverage{
    abstract public function cost():int;
}

class CaramelDecorator extends BeverageDecorator{
    private int $cost = 5;

    public function __construct(public Beverage $beverage){

    }

    public function cost(){
        return $this->beverage->cost() + $this->cost;
    }
}

$coffee = new Coffee;
$coffee_with_caramel = new CaramelDecorator($coffee);
```
