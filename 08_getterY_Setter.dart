void main() {
  
  final myCuadrado = Cuadrado(size: -10);
  
// myCuadrado.size=-5;
  
  print('area: ${myCuadrado.area}');
  
}


class Cuadrado{
  //el guion antes del nombre indica que la propiedad es privada
  double _size;// size * size
  
  Cuadrado({
    required double size
  }):assert(size>=0, 'size must be >=0'),
  _size=size;
  
  double get area{
    return _size * _size;
  }
  
  set size(double value){
    print('setting new value $value');
    if (value < 0) throw ArgumentError('Value must be >=0');
    
    _size=value;
  }
  
  
  double calcularArea(){
    return _size * _size;
  }
}