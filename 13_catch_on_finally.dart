void main() async {
  print('Inicio');
  
  try{
    final value = await httpGet('http');
    print('exito: $value');
  }on Exception{
    print('Tenemos una Exception');
  }catch(err){
    print('Ops! algo paso: $err');
  }finally{
    print('Fin del try y catch');
  }
  
    
  
  print('Fin');
}


Future<String> httpGet(String url) async{
  
  await Future.delayed(const Duration(seconds: 1));
  
  throw Exception('No hay paramtros en el URL');
  
  //throw 'Error en la peticion';
  
 // return 'Tenemos un valor de la peticion';
  
  

}
