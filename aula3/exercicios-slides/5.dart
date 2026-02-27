/* 5. Crie um programa que receba a nota de dois alunos, calcule sua média e 
informe se o aluno está aprovado ou reprovado conforme a média.
Se média for maior ou igual a 7: Aprovado.
Maior ou igual a 4 e menor do que 7: Exame.
Menor do que 4: Reprovado.*/


import 'dart:io';

void media() {}

void main() {
  for (int i = 1; i <= 2; i++) {
    print("Aluno $i");

    print("\nNota 1:");
    double n1 = double.parse(stdin.readLineSync()!);
    print("\nNota 2:");
    double n2 = double.parse(stdin.readLineSync()!);

    double media = (n1 + n2) / 2;
    print("A média do aluno $i é: $media");
    switch (media) {
      case >= 7:
        print("Status: Aprovado!");
      case >= 4 && < 7:
        print("Status: De exame");
      case < 4:
        print("Status: Reprovado");
    }
  }
}
