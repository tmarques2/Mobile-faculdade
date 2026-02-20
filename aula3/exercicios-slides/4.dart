import 'dart:io';

double conversao(double real) {
  double dolar = real * 6.56;
  double euro = real * 7;
  double franco = real * 4.35;
}

void main() {
  print("Digite o valor em real: ");
  double real = double.parse(stdin.readLineSync()!);
  print(
    "Para qual moeda você quer converter? \n1- dolar \n2-euro \n3-franco suiço",
  );
  int opcao = int.parse(stdin.readLineSync()!);
  switch(opcao){}
}
