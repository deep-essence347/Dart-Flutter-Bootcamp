//Class

/*There are 2 ways to define a constant variable:
First: 'final' keyword: It is a runtime constant whose value can be changed using a constructor.
Second: 'const' keyword: It is a compile-time constant whose value can never be changed.

P.S.: Only a 'static' variable can be defined as 'const' constant within a class. 
Else the 'const' keyword is underlined red to display an error.
*/

class Person{
  final name; //once the variable with a type final is initialized with a value, the value of that variable cannot be changed.
  static const int age=18;

  /*here name is an object property because it can have different value for different object.
   And age is a class property because its value remains 10 for every object*/
  Person(this.name);//Construtor that assigns passed value of name to the name in this class.

}

void main(){
  var person1=Person('Dipesh');
  print(person1.name);

  //person1.name='Drogba'; //here, name gets underlined by a red line saying that"'name' can't be used as a setter because it is final."
  print(Person.age); //here class name'Person' is used to access age because age is a class property. If we try to access age with an object, an error is diplayed.

  var person2=Person('Jack');
  print(person2.name);

  //Age is same for all the object regardless to the number of objects because it is a 'const' constant.
}