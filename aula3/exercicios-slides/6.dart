// 6. Crie um programa que receba a idade de duas pessoas e print na tela qual é a pessoa mais velha.

import 'dart:io';

void main() {
  print("Digite o nome da pessoa 1:");
  String nome1 = stdin.readLineSync()!;
  print("Idade:");
  int i1 = int.parse(stdin.readLineSync()!);

  print("Digite o nome da pessoa 2:");
  String nome2 = stdin.readLineSync()!;
  print("Idade:");
  int i2 = int.parse(stdin.readLineSync()!);

  if (i1 > i2) {
    print("A pessoa mais velha é $nome1 com $i1 anos");
  } else {
    print("A pessoa mais velha é $nome2 com $i2 anos");
  }
}
