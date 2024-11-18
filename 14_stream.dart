void main(){
  
  emitNumbers().listen((value){
    print('desde periodic $value');
  });
  
}

//flujo de datos 
Stream<int> emitNumbers(){
  
  
  return Stream.periodic(const Duration(seconds: 1),(value){
    
    return value;
  }).take(5);
}