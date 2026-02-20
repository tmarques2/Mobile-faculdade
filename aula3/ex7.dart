import 'dart:io';

void main(){
  int res = 0, n;
  print("Digite o numero que deseja saber a tabuada: ");
  n = int.parse(stdin.readLineSync()!);
  print("Tabuada do $n");

  for (int cont = 0; cont<11; cont++){
    res = n*cont;

    print("Res = $n * $cont = $res");
  }
}