//Exception Handling

int GTZ(int val){
  if(val<=0){
    throw Exception('Must be greater than 0');
  }
  return val;
}
void VTV(var val){
  var VV;

  try{
    VV=GTZ(val); //VV is null in case of an error
  }
  catch(e){
    print(e); 
  } //Catches and prints the error
  finally{ //finally{} is an optional block
    if(VV==null){
      print("value is not accepted.");
    }
    else{
      print("Value Verified: $VV");
    }
  }
}
main(){
  VTV(3); 
  VTV(0); //Exception
  VTV(-3);  //Exception
}