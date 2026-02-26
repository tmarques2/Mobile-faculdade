import 'dart:io';

void main() {
  print("Cálculo do desconto de combustível");

  print("Digite a quantidade de litros comprada:");
  double litros = double.parse(stdin.readLineSync()!);

  print("Digite o tipo de combustível \nE para Etanol \nD para diesel \nG para gasolina");
  String combustivel = stdin.readLineSync()!;

  double precoEtanol = 1.70;
  double precoDiesel = 2;
  double precoGasolina = 4.5;

  double calculoDesconto, desconto, porcentoDesconto;

  switch (combustivel){
    case "E":
      if (litros >= 15) {
        porcentoDesconto = 0.4;
      } else {
        porcentoDesconto = 0.3;
      }
      break;
    
    case "D":
    if (litros >= 15) {
      porcentoDesconto = 0.5;
    }
  }
    


}