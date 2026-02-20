import 'dart:io';

void main(){
  String nome, curso;
  int idade;
  print("Qual seu nome: ");
  nome = stdin.readLineSync()!;
  print("Qual sua idade: ");
  idade = int.parse(stdin.readLineSync()!);
  print("Qual seu curso: ");
  curso = stdin.readLineSync()!;
  print("Seu nome é $nome, tem $idade anos e faz $curso");
}