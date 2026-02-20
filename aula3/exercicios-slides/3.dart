import 'dart:io';

double salario_liquido(double salario) {
  double impostos = salario * 0.1;
  double bonificacao = salario * 0.2;
  return (salario - impostos) + bonificacao;
}

void main() {
  print("Digite seu salario: ");
  double salario = double.parse(stdin.readLineSync()!);
  double resultado = salario_liquido(salario);
  print("O salario liquido é de: $resultado");
}
