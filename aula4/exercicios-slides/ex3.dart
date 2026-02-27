import 'dart:io';

class Salario{
  void receberInfo(){
    stdout.write("Digite o salário: ");
    double salario = double.parse(stdin.readLineSync()!);
  }
   
  double salario_liquido(salario) {
    double impostos = salario * 0.1;
    double bonificacao = salario * 0.2;
    return (salario - impostos) + bonificacao;
  }
}