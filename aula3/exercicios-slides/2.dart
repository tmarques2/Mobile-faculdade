// 2. Crie uma função que calcule a área de um triângulo a partir de dados digitados pelo usuário. A = (b* h)/2 e retorne esse valor.
import 'dart:io';

double area(double base, double altura){
  return (base*altura)/2;
}

void main() {
  double base, altura;
  print("Vamos calcular a área do triângulo");
  print("Base: ");
  base = double.parse(stdin.readLineSync()!);
  print("Altura: ");
  altura = double.parse(stdin.readLineSync()!);
  
  double resultado = area(base, altura);
  print('A área do triangulo é: $resultado');
}
