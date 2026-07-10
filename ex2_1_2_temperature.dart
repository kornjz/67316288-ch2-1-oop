class Temperature{
  double? _celsius = 0;

  double? get fahrenheit {
    if(_celsius == null)return null;
    return(_celsius! *9/5)+32;
  }

  set fahrenheit(double f){
    if(f < -273.15){
      print('The number is incorrect');
    }else{
      _celsius = (f-32)*5/9;
    }

  }
}
void main(){
  var tem = Temperature();
  tem.fahrenheit = -274.15;
  print(tem.fahrenheit);
}