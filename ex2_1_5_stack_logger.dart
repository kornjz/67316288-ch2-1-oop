mixin Loggable{
  void log(String msg){
    print("[LOG - ${DateTime.now()}]: $msg");
  }
}
class Stack<T> with Loggable{
  final List<T> _stornge = [];
  void push(T element){
    _stornge.add(element);
    log("Enter: $element | Current Stack: $_stornge");
  }

  T? pop(){
    if(_stornge.isEmpty){
      log("Pop write is connot pop from an empty stack");
      return null;
    }
  
  T removeElement = _stornge.removeLast();
  log("Pop : $removeElement | Current Stack: $_stornge");
  return removeElement;
  }
  T? peek(){
    return _stornge.isNotEmpty ? _stornge.last : null;
  }
  bool get isEmpty => _stornge.isEmpty;
}

void main(){
  print(" Test even number ");
  var numberStack = Stack<int>();
  numberStack.push(100);
  numberStack.push(200);
  numberStack.push(300);
  numberStack.pop();
  numberStack.pop();
  numberStack.pop();
  numberStack.pop();
  print("-"*50);
  print("Test String");
  var textStack = Stack<String>();
  textStack.push("korn");
  textStack.push("so");
  textStack.push("cute");
  print("Top Element is: ${textStack.peek()}");
  textStack.pop();
}