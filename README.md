# Jargon
A different approach to language development and design. We consider a philosophical perspective to a minimalist, contextual, object-oriented programming language to solve problems.

We assume most readers landing here know what object-oriented programming is. If not,
[check here][1].

And see a related reference on [aspect-oriented programming.][2]

Contextual coding is not unique. Context is obvious in object-oriented programming 
through object heirarchy. In C#, everything derives from `Object`. Certain methods 
are available to all objects - whether reference or value types: 
 - `ToString()`
 - `GetHashCode(...)`
 - `Equals(...)`
 
In addition, all reference and value types can be cast to `Object`.

From a class perspective, all the properties and methods contained within the object 
definition are in the context of that class. Consider the following example:

``` c#
//	C#
public class Person {
	public int Id {get; set;}
	public string Name {get; set;}
	public Vacation Vacation {get; set;}
	
	public void StartVacation(DateTime dt) {
		...
	}
}
```

When `Person` is instantiated

```
Person p = new(){Id = 1, Name = "John Paul"};
```

the properties `Id` and `Name` are in the context of `Person` and referenced through 
the assigned variable `p`.

Also, the method `StartVacation(...)` belongs to the context of `Person`. The non-static 
method is accessed through the variable 'p'.

```
p.StartVacation(dt);
```

In order for `p` to be accessed the variable must be passed to a controller, manager, 
or other business layer. In some cases - such as a Data Layer - the object data is 
retrieved from a data store and hydrated. That object is then returned to an agent 
object to display or manipulate the object. C# extension methods are an example of 
context-oriented coding. As an extension of `Person`, the method `StartVacation(...)` 
would look like 

```
public void StartVacation(this Person p, DateTime dt) {
	...
}
```

Separation of functions can unnecessarily overcomplicate architecture. For instance
data layers connect to data stores, query data, write data and generally hydrate 
data objects returned to business or display layers.

What would this process look like from a purely contextual perspective?

```
/*
	Define the DataLayer API in a namespace. There is no need for a class. A class 
	should be used when multiple instances of independent objects are needed. For 
	a simple interface, no static class or object is needed.
*/
namespace Sample.DataLayer {
	/*
		assumption:	*connection* is a defined interface that manages database 
		connections.
	*/
	
	public Query(class c) {
		return connection.Table(c).All;
	}
}


/*
	Import the namespace where the DataLayer API is defined. Alias as desired.
*/
import Sample.DataLayer as datastore;

namespace Sample.Business {
	/*
		assumption:	*person* is a defined public class
					*datastore* is a defined public data connection object
					
		paradigm:	implied context
	*/

	public StartVacation(int id, TimeStamp ts) {
		datastore.Query(person) => {
			/*
				Implicit context is the return defined in the `Query` method
				The implied context is referenced by the `.`. A return statement 
				puts a value into memory. That value is not retrieved until the 
				context is referenced or assigned to a variable.
				
				In this case, the return is a pointer reference to a function - `All`.
				The method expects a parameter providing the predicate by which data 
				is located within the requested `Table`.
				
				Since the context is a function, the implication is an invocation 
				of the function. The long-hand might read: `.Invoke(p => p.Id == id)`. 
				`Invoke` is the understood member.
			*/
			.(p => p.Id == id) => {
				//	a data object is returned, thus the context is `person`.				
				.StartVacation(ts);
				
				//	how do we persist the change to the datastore?
			};
			/*
				The limitation here is that the data object with implied context 
				is not available outside the scope of the method group. An implied 
				context cannot be passed to another function.
				
				An option is to use explicit context. The predicate function above 
				could specify a variable for the context as shown in the next example.
			*/
		}
	}
}
```

Implied context is a shorthand that can be used in most code. Implied and explicit 
context paradigms can be mixed and shown in a third example of this same scenario.
The implied context lets us assign a value to memory that would normally be represented 
by a variable. In C#, I often find myself writing code to elminate that extra line 
or two declaring and/or assigning the variable. "But, it's only a couple of lines," 
right? Spread out over a large application and you have dozens, if not hundreds of 
extra lines of code that read `var i = 0;` or some variant thereof.

The explicit context paradigm lets you still express variable declaration and assignment. 
It looks different but is still intuitive if you know what the C# `out` parameter 
is.

[1]: https://www.tutorialspoint.com/What-is-object-oriented-programming-OOP "OOP"
[2]: https://docs.jboss.org/aop/1.0/aspect-framework/userguide/en/html/what.html "AOP"
