### Definition
> ## *The observer pattern defines one to many dependecy between objects, so when a object changes all of its dependencies are notified*

```php
interface Observable{
    public function add(Observer $observer):void;
    public function remove(Observer $observer):void;
    public function notify():void;
}

interface Observer{
    public function update():void;
}
```