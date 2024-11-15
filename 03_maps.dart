void main(){
   
  final Map<String, dynamic> jugador = {
     'name': 'Jaser',
     'vida': 100,
     'EstaVivo': true,
     'habilidad': <String>['Rapidez'],
     'sprites':{
       1: 'ditto/front.png',
       2: 'ditto/back.png'
     }
     
   };
  
  final jugadores={
    1:'Jaser',
    2:'Castellanos',
    3:'probando'
  };
  
  print(jugador);
  print('Name: ${ jugador['name']}');
  print('Imagenes: ${ jugador['sprites']}');
  
  print('Front: ${ jugador['sprites'][1]}');
  print('Back: ${ jugador['sprites'][2]}');
  
  print(jugadores);
}