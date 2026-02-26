import 'dart:io';

void main() {
  double preco = 0;
  print("Cálculo de energia elétrica");
  print("Digite a quantidade de kWh consumida:");
  double kwh = double.parse(stdin.readLineSync()!);

  print(
    "Digite o tipo de instalação \nR - Residência \nI - Indústria \nC = Comércio:",
  );
  String tipo = stdin.readLineSync()!.toUpperCase();

  switch (tipo) {
    case "R":
      if (kwh <= 500) {
        preco = 0.5;
      } else {
        preco = 0.7;
      }
    case "I":
      if (kwh <= 5000) {
        preco = 0.55;
      } else {
        preco = 0.5;
      }
    case "C":
      if (kwh <= 1000) {
        preco = 0.65;
      } else {
        preco = 0.6;
      }
  }

  double valorFinal = preco * kwh;

  print("Valor final: $valorFinal");
}
