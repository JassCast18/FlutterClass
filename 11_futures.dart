void main() {
  print('Inicio');
  httpGet('https.').then((value){
    print(value);
  }).catchError((err){//con esto definimos el tipo de error
    print('Error: $err');
  });
    
  
  print('Fin');
}

//Se ejectura al pasar 1 segundo
Future<String> httpGet(String url){
  return Future.delayed(const Duration(seconds: 1), (){
    throw 'Error en la peticion http';
    //return 'Respuesta de la peticion http';
  });
}

