// Collection
//Set and Map
void main() {
  //Set

  var foods={'pizza','burger','chowmein'};
  for(var x in foods){
    print(x); //prints every value in foods.
  }
  
  //Defining an empty set
  var a={};
  print(a.runtimeType); //displays '_InternalLinkedHashMap<dynamic, dynamic> '
  //therefore the above var type doesnot become an empty set but considered a Linked Hash Map type.
  var b=<String>{};
  Set <String> c={};
  print(b.runtimeType); //displays '_CompactLinkedHashSet<String>'
  print(c.runtimeType); //displays '_CompactLinkedHashSet<String>'
  //the var b and c type becomes a Linked Hash Set


  //Map

  //defining and accessing the eelments of a map
  var gifts={
    //Key:  Value
    'first': 'partridge',
    'second': 'turtledoves',
    'fifth': 'golden rings'
  }; //here,  gifts is a map.

  print(gifts['fifth']); //prints golden rings

  var gifts2={
    //Key:  Value
    2: 'partridge',
    1: 'turtledoves',
    3: 'golden rings'
  }; //here,  gifts2 is a map.

  print(gifts2[1]); //prints turtledoves

  //defining an empty map and inserting values to that map
  var fruits=Map(); //Empty map
  fruits['first']="Mango";
  print(fruits['first']); //prints Mango
  
}