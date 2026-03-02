import 'dart:io';

class Funcionario {
  double salarioBase;

  Funcionario(this.salarioBase);

  double salario_liquido() {
    double impostos = salarioBase * 0.1;
    double bonificacao = salarioBase * 0.2;
    return (salarioBase - impostos) + bonificacao;
  }
}

void main() {
  print("Qual seu salario:");
  double entrada = double.parse(stdin.readLineSync()!);

  Funcionario usuario = Funcionario(entrada);

  double resultado = usuario.salario_liquido();

  print("salario base: $entrada");
  print("salario final: $resultado");
}
