//Class
//Getters and Setters

class Rectangle{ 
  num left, top, width, height;
  //num is a datatype inherited by int and double type.

  Rectangle(this.left,this.top,this.width,this.height); //Constructor

  //Define two calculated properties: right and bottom.
  num get right=> left+width;
  set right(num value)=> left=value-width;

  num get bottom=>top+height;
  set bottom(num value) => top= value-height;
}

class Triangle  {
  num height, width; //num is inherited by both int and double

  Triangle(this.height,this.width);

  num get area => (1/2*height*width); //area is a getter function
  set changeheight (num val) => height=val-width; 

}


void main(){
  var rect=Rectangle(3,4,20,15);

  print(rect.left); //3
  rect.right=12;//setter
  print(rect.left); //-8

  print(rect.top); //4
  rect.bottom=11;//setter
  print(rect.top); //-4


  var triangle1 = Triangle(3,4);
  print(triangle1.width); //4
  print(triangle1.area); //6.0 //we dont need to call as sum() //getter
  triangle1.changeheight=15; //setter
  print(triangle1.height); //11
  print(triangle1.area); //22.0
}