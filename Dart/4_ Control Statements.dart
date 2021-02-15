//Control Statements

main(){
  //Type Test
  var x=10.00;
  if(x is int){
    print('integer');
  }
  else{
    print(x.runtimeType); //x.runtimeType finds the type of value stored in x.
  }

  //loops
  //for
  for(var i=0;i<10;i++){
    if(i==4) continue; //skips the loop when i=4.
    if(i==7) break; //exits the loop when i=7
    print(i); //prints value of i.
  }  

  // //for-in
  var numbers=[4,2,9];
  for(var n in numbers){
    print(n);
  } //prints each value present in array numbers.


  //forEach

  numbers.forEach( (n) => print(n)); //prints each value in numbers.

  numbers.forEach(printNum); //calls the function printNum which prints each value in numbers.


  //while loop
   int num=5;

   while(num>0){
     print(num);
     num-=1;
   } 

  //do-while loop
   do{
     print(num);
     num-=1;
   } while(num>0);
  
} 
void printNum(num){
  print(num);
}