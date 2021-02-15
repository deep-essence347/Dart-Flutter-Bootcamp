//Function

main(){
  display(square(2));  //prints 4
  display(square(3.4)); //prints 11.559999

  print(display.runtimeType); //displays '(dynamic) => void'

  //Arrow function
  display(twice(3)); //prints 6

  //Nameless funtion or Anonymous function
  var fruits=['apple','banana','mango'];
  fruits.forEach((fruit){
    print(fruit);
  }); //prints each fruit from fruits

  //There are 3 types of parameters: Positional parameters, Named parameters and mixed parameters.
  //Positional parameter
  print(sum1(3,2)); //assigns 3 to num1 and 2 to num2 then prints 5

  //Named parameter
  print(sum2(num2:5, num1: 3));//assigns 3 to num1 and 5 to num2 then prints 8

  //Mixed parameter: Includes both positional and named parameters
  print(sum3(11, num3: 4, num2: 6)); //assigns 11 to num1, 6 to num2 and 4 to num3 then prints 21

  //Named parameters as optional
  print(sum3(11,num3:4)); //assigns 11 to num1 and 4 to num3 whereas no valueis passed to num2 then prints 15

  //Positional parameters as optional
  print(sum4(3));//assigns 3 to num1 then prints 3
}

dynamic square(var num){
  return num*num;
}
void display(var ans){
  print(ans);
}

//Arrow function definition
dynamic twice(var num) => 2*num;

dynamic sum1(var num1, var num2) => num1+num2;

dynamic sum2({var num1,var num2}) => num1+num2;

dynamic sum3(var num1, {var num2, var num3}) => num1+(num2 ?? 0)+num3; //In case the default value is not given to num2, it displays an error as num2 is null.
//dynamic sum3(var num1, {var num2=0, var num3}) => num1+num2+num3; //This is another way to assign default value to num2

dynamic sum4(var num1, [var num2])=> num1+(num2 ?? 0); //num2 is assigned a default valur as 0
//dynamic sum4(var num1, [var num2=0])=> num1+num2; //num2 is assigned a default valur as 0
