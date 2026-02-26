import 'dart:io';

void main() {
  print("Cálculo do desconto de combustível");

  print("Digite a quantidade de litros:");
  double litros = double.parse(stdin.readLineSync()!);

  print("Tipo de combustível (E-Etanol, D-Diesel, G-Gasolina):");
  String tipo = stdin.readLineSync()!.toUpperCase();

  double preco = 0, perc = 0;

  switch (tipo) {
    case "E":
      preco = 1.70;
      perc = (litros >= 15) ? 0.04 : 0.03;
      break;
    case "D":
      preco = 2.00;
      perc = (litros >= 15) ? 0.05 : 0.03;
      break;
    case "G":
      preco = 4.50;
      perc = (litros >= 20) ? 0.03 : 0.00;
      break;
    default:
      print("Tipo inválido!");
      return;
  }

  double totalBruto = litros * preco;
  double desconto = totalBruto * perc;
  double totalPagar = totalBruto - desconto;

  print("\nValor sem desconto: R\$ ${totalBruto.toStringAsFixed(2)}");
  print("O valor final com desconto é: R\$ ${totalPagar.toStringAsFixed(2)}");
}