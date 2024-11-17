void main() {

  final windPlant = WindPlant(initialEnergy: 1000);
  
  final nuclearPlanta = NuclearPlant(energyLeft:10000);
  
  print('wind ${chargePhone(windPlant)}');
   print('Nuclear ${chargePhone(nuclearPlanta)}');
}

double chargePhone(EnergyPlant plant){
  if (plant.energyLeft<10){
    throw Exception('Not enough energy');
  }
  
  return plant.energyLeft -10;
}





enum PlanType {nuclear,wind,water}

abstract class EnergyPlant{
  double energyLeft;
  final PlanType type;//nuclear, wind, water
  
  EnergyPlant({
    required this.energyLeft,
    required this.type
  });
  
  void consumeEnergy(double amount);
  
  
  
  
}

class WindPlant extends EnergyPlant{
  WindPlant({required double initialEnergy}):
  super(energyLeft: initialEnergy, 
       type: PlanType.wind);
    
  @override
    void consumeEnergy(double amount){
    energyLeft -=amount;
  }
  
  
  
}

class NuclearPlant implements EnergyPlant{
  @override
  double energyLeft;
  
  @override
  final PlanType type=PlanType.nuclear;
  
  NuclearPlant({required this.energyLeft});
  
  @override
  void consumeEnergy(double amount){
    energyLeft -=(amount*0.5);
  }
  
  
  
}