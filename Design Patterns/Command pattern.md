### Definition
> ## *The command pattern encapsulates a request as an object and thereby lets you parameterize other objects parameterize other objects with different request/queue.*

Command patter dictates that we encapsulate an request that can execute and unexecute certain action. Then we can pass them to other objects, so they can invoke these requests. 

```php
interface ICommand{
    public function execute():void;
    public function unexecute():void;
}

class LightOnCommand implements ICommand{
    public function execute(Light $light){
        $light->on();
    }

    public function unexecute(Light $light){
        $light->off();
    }
} 
```