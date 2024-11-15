void main(){
  
  final numbers= [1,2,3,4,5,5,5,6,7,8,9,9,10];
  
  print('list original $numbers');
  print('tamaño: ${numbers.length}');
  print('Index 0: ${numbers[0]}');
  print('Primero: ${numbers.first}');
  print('Reversed: ${numbers.reversed}');
  
  final reversNumbers=numbers.reversed;
  print('Iterable: $reversNumbers');
  print('List: ${reversNumbers.toList()}');
  print('set: ${reversNumbers.toSet()}');
  
  final numberGreaterThan5=numbers.where((int num){
    return num>5;
  });
  print('>5 iterable: $numberGreaterThan5');
 print('>5 set: ${numberGreaterThan5.toSet()}');


}