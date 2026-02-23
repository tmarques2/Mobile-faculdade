//3. Crie uma função que calcule o salário líquido do usuário a partir dos valores digitados pelo teclado considerando um desconto de 10% de
//impostos e bonificação de 20% em cima do salário.

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
