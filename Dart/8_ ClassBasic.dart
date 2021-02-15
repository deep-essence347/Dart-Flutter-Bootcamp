//Class

class Person{
  String name;
  int age;

  Person(){
    this.name=null;
    this.age=null;
  }
  void display(){
    print(name);
    print(age);
  }
}
class Fruit{
  String name;
  int price;

  // Fruit(String name, [int price=200]){
  //   this.name=name;
  //   this.price=price;
  // }
  Fruit(this.name,[this.price=200]);

  void display(){
    print(name);
    print(price);
  }
}

class Foods{
  String name;
  int price;

  //Named Constuctor
  Foods.junk(){
    name='Noodle';
    price=20;
  }
  void display(){
    print(name);
    print(price);
  }
}
void main(){
  Person person1=Person();
  person1.name='Dipesh';
  person1.age=20;
  person1.display();
  
  Person person2=Person();
  person2.display();

  Fruit fruit1=Fruit('Apple',300);
  fruit1.display();
  Fruit fruit2=Fruit('Mango');
  fruit2.display();

  var fruit3=Fruit('Berry',40); //Here though fruit3 is not of type Fruit, the compiler automatically knows that fruit3 is an object of Fruit.
  fruit3.display();

  var foods1=Foods.junk();
  foods1.display();
}