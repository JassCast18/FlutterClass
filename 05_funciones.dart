void main(){
  //Jaser Castellanos
  print(genialTodos());
  print(genial());
  print(anadirNumbers(10,20));
  print(anadirNumbers2(10,20));
  print(genialPersona(name: 'Jaser'));
}

String genialTodos(){
  return 'Hola a todos!';
}

//Funcion lamba
String genial()=>'Hola hola';

int anadirNumbers(int a,int b){
  return a+b;
}

//Funcion lamba
int anadirNumbers2(int a,int b)=>a+b;

int anadirNumbersOptional(int a,[int b=0]){
  //b??=0;
  return a+b;
  }

String genialPersona({required String name, String message='hola,'}){
  return '$message '+ name ;
}