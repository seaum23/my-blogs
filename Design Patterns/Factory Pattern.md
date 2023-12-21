## Definition
> ### *The factory method pattern defines an interface for creating an object, but lets subclasses decide which class to instantiate. Factory method lets a class defer instantiation to subclasses.*


A factory usually produce product. A factory may have various facilities that can produce different products but they will have a common company name.

Factory pattern is somewhat similar to that concept. When your client code needs different variations of product then you can delegate this task to a factory that will hide the implementation logic.

It is a more robust constructor.

This can be used to create product that you do not know the type of before hand. Lets say a payment system. You do not know the type of payment system that will be implemented but you do know that it will have some common functionality. Such as:
* pay
* refund

So for this you can use factory pattern and use any configuration file to know which payment should be injected.