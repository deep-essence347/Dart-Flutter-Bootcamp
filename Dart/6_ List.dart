//Collection
//list
void main(){
  List names=['Jack', 'Jill', 11, 11.11]; //Every type of variable can be stored.
  names[1]='Mark'; //changes Jill to Mark.
  for(var n in names){
    print(n); //prints each value in names.
  }

  List <String> tees=const ['shirt', 'trouser']; //Only string varibles can be stored.  <String> indicates the type of variables that can be stored in the list.
  //In above definition, 'const' doesnot allow any values to be changed. 
  //tees[1]='t-shirt'; Such expression to a constant list creates an error.
  
  for(var n in tees){
    print(n);
  }


  List foods=['momo','chowmein','burger'];
  var foods2=foods; //here, foods is not actually copied to foods2 but foods2 is made able to access foods. 
  foods[1]='pizza'; 
  print(foods2[1]); //when foods2 is printed, pizza is printed instead of chowmein.  
  var foods3 =[...foods];//here,foods is exactly copied to foods3, and any changes made on foods doesnot have any effect on foods3.
  foods[1]='bread';
  print(foods3[1]);//prints pizza
  print(foods[1]);//prints bread
}