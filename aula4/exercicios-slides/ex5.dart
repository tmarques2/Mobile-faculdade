import 'dart:io';

class Conversor {
  double dolar = 6.56;
  double euro = 7;
  double franco = 4.35;

  double paraDolar(double real) => real / dolar;
  double paraEuro(double real) => real / euro;
  double paraFranco(double real) => real / franco;
}

void main() {
  Conversor converter = Conversor();
  print("Digite o valor em real: ");
  double real = double.parse(stdin.readLineSync()!);

  print(
    "Para qual moeda deseja realizar a conersao: \n1-Dolar \n2-Euro \n3-Franco Suiço",
  );
  int op = int.parse(stdin.readLineSync()!);
  if (op > 0 && op < 4) {
    switch (op) {
      case 1:
        double resultado = converter.paraDolar(real);
        print("valor em dolar: ${resultado.toStringAsFixed(2)}");
        break;
      case 2:
        double resultado = converter.paraEuro(real);
        print("valor em euro: ${resultado.toStringAsFixed(2)}");
        break;
      case 3:
        double resultado = converter.paraFranco(real);
        print("valor em franco: ${resultado.toStringAsFixed(2)}");
        break;
    }
  } else {
    print("Opcao invalida");
  }
}
