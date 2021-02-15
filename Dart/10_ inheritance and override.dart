//class

class Vehicle {
  String model;
  int year;

  Vehicle(this.model,this.year);
  
  void display(){
    print(model);
    print(year);
  }
}

class Car extends Vehicle{ //'extends' keyword inherits a class.
  double price;

  Car(String model, int year, this.price) : super(model, year); // Here, 'super(model, year);' calls the constructor of class Vehicle.

  void display(){
    super.display(); //display function from class Vehicle is called.
    print(this.price);
  }
}

/*Use of override 
  Override shall be used when you don't have control of superclass method implementation.
  Override allows the subclass to have its own implementation without modifying the SuperClass method implementation.
*/
class X{
  void display(){
      print('Parent Class');

  }
  
}

class Y extends X{
  @override
  void display(){
      print('Child Class');

  }
  
}

void main(){
  var car1=Car('Accord',2014,150000);
  //Above instantiation calls the constructor of class Car which calls the constructor of class Vehicle. 
  car1.display(); 
  //display() function from Car is called inside of which a calling function to display() functoin from Vehicle is present.

  var x=X();
  var y=Y();

  x.display(); //displays 'Parent Class'
  y.display();//displays 'Child Class'
}

/* In the use of override, even if we don't use '@override' keyword the output is same.
  But what makes it different is that, when we don't use override feature to the inheriting class, the inherited class is modified. 
  And otherwise when we use '@override'.
*/