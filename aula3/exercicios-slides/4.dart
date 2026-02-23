//4. Crie um programa que converta valores de reais (R$) para outras moedas de acordo com a escolha do usuário: euro (EUR), dólar (USD), franco suíço (CHF).
//Considere o valor do Euro 7,00
//Dólar 6,56
//Franco Suiço 4,35

import 'dart:io';

void main() {
  double dolar = 6.56;
  double euro = 7;
  double franco = 4.35;
  double resultado;

  print("Digite o valor em real: ");
  double real = double.parse(stdin.readLineSync()!);
  print(
    "Para qual moeda você quer converter? \n1- dolar \n2-euro \n3-franco suiço",
  );
  int opcao = int.parse(stdin.readLineSync()!);
  switch (opcao) {
    case 1:
      resultado = real / dolar;
      print("Valor em Dolar: ${resultado.toStringAsFixed(2)}");
      break;
    case 2:
      resultado = real / euro;
      print("Valor em Euro: ${resultado.toStringAsFixed(2)}");
      break;
    case 3:
      resultado = real / franco;
      print("Valor em Franco Suiço: ${resultado.toStringAsFixed(2)}");
      break;
    default:
      print('Operacao invalida');
  }
}
