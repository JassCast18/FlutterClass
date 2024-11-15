void main() {
  
  final String pokemon = 'water';
  final int hp=100;
  final bool isAlive=true;
  final abilities=<String>['impostor'];
  
  final List<String> sprites=['ditto/front.png','ditto/back.png'];
  
  //cuidado al usar dynamic, porque este tipo de dato no tiene restricciones
  dynamic errorMessage='hola';
  errorMessage=true;
  errorMessage=[1,2,3,4];
  errorMessage={1,2,3,4};
  errorMessage= () =>true;
  errorMessage= null;
  
  print("""
  $pokemon
  $hp
  $isAlive
  $abilities
  $sprites
  $errorMessage
  
  """);
}
