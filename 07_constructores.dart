void main(){
  
  //Simulacion de un mapa de una respuesta http
  final Map<String, dynamic> rawJson={
    'name':'Tony',
    'power':'Money',
    'isAlive':true
  };
  
  final ironman =Hero.fromJson(rawJson);
  
 /* final ironman = Hero(
  name: rawJson['isAlive2'] ?? false,
  power: 'volar',
  isAlive: true);*/
  
  print(ironman);
}

class Hero{
  String name;
  String power;
  bool isAlive;
  
  Hero({
    required this.name,
    required this.power,
    required this.isAlive
  });
  
  //Extrae el Json y lo convierte en un Hero
  Hero.fromJson(Map<String,dynamic> json):
  name=json['name']?? 'Nombre no puesto',
  power= json['power']?? 'Poder no dado',
  isAlive= json['isAlive']?? false;
    
  
  
  //modifiva el toString
  @override
  String toString(){
    return '$name, $power, isAlive:  ${ isAlive ? 'YES!':'No'}';
  }
}