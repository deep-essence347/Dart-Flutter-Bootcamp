
main(){
  //string -> int
  var one=int.parse('1');
  assert(one==1); // if 'one' is not equal to int 1, it gives an error. 
  print(one);
  //string -> double
  var onePointOne=double.parse('1.1');
  assert(onePointOne==1.1);
  print(onePointOne);
  //int->string
  String str=1.toString();
  assert(str=='1');
  print(str);

  //double-> string
  String piAsString=3.14159.toStringAsFixed(2);
  print(piAsString);

}