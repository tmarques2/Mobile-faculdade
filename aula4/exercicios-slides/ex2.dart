import 'dart:io';

class Triangulo{
  double base = 0;
  double altura = 0;

  void receberValores(){
    stdout.write("Digite o valor da base: ");
    base = double.parse(stdin.readLineSync()!);

    stdout.write("Digite o valor da altura: ");
    altura = double.parse(stdin.readLineSync()!);
  }

  double calcularArea(){
    return (base*altura)/2;
  }
}

void main(){
  Triangulo meutriangulo = Triangulo();
  meutriangulo.receberValores();
  double resultado =  meutriangulo.calcularArea();
  print("A área do triangulo é igual a: ${resultado}");
}