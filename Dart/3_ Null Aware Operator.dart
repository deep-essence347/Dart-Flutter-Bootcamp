//null aware operator
// (?.),(??),(??=)  

class Num {
  int num=10;
}
main(){
  var n=Num(); //n is an object of the class Num.
  var m;
  int number1;
  int number2;
  
  if(n!=null){
    number1=n.num;
  }                 // if n is not null, number1 is assigned with the value of num from class Num.
  print(number1);// 10 is printed.

  number2=m?.num ?? 0; // here, ?. operator checks if m is a not a null object. Similarly, ?? operator acts as a else statement to the ?. operator which assigns 0 to number2 
  print(number2); //0 is printed;

  int number3;
  print(number3 ??= 100); // here, ??= operator checks if number3 is null and if it is null 100 is assigned to number3.
  print(number3); //100 is printed.


  //Ternary operator

  int x=11;
  var result=x%2==0?'Even' : 'Odd'; // if x%2==0, then result=Even else result=Odd.
  print(result);
}