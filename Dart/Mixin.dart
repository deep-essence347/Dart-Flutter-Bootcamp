main(){

  // Animal().move();
  // Fish().move();
  // Bird().move();

  Duck().move();
}

class Animal{
  void move(){
    print('changed position');
  }
}

mixin CanSwim{
  void swim(){
    print('Changing position by swimming');
  }
}

mixin CanFly{
  void Fly(){
    print('Changing position by flying');
  }
}

class Fish extends Animal with CanSwim{
  @override
  void move(){
    super.move();
    swim();
  }
}

class Bird extends Animal with CanFly {
  @override
  void move(){
    super.move();
    Fly();
  }
}


class Duck extends Animal with CanSwim, CanFly{
  @override
  void move(){
    super.move();
    swim();
    Fly();
  }
}