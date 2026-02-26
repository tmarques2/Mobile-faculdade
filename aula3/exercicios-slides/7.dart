import 'dart:io';

void main() {
  double valorCarro1, valorCarro2, valorCarro3;

  print("Valor do carro 1:");
  valorCarro1 = double.parse(stdin.readLineSync()!);
  print("Valor do carro 2:");
  valorCarro2 = double.parse(stdin.readLineSync()!);
  print("Valor do carro 3:");
  valorCarro3 = double.parse(stdin.readLineSync()!);

  double maisCaro = valorCarro1;
  String caro = "carro 1";
  double maisBarato = valorCarro1;
  String barato = "carro 1";

  if (valorCarro2>maisCaro){
    maisCaro = valorCarro2;
    caro = "carro 2";
  } 
  if (valorCarro3>maisCaro){
    maisCaro = valorCarro3;
    caro = "carro 3";
  }

  if (valorCarro2<maisBarato){
    maisBarato = valorCarro2;
    barato = "carro 2";
  }
  if (valorCarro3<maisBarato){
    maisBarato = valorCarro3;
    barato = "carro 3";
  }

  print("O carro mais barato é o $barato: R\$ $maisBarato");
  print("O carro mais caro é $caro: R\$ $maisCaro");
}