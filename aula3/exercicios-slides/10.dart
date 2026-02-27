/*10. Crie um programa que receba 4 valores numéricos digitados pelo usuário. Em seguida, permita que o usuário escolha a
operação que deseja realizar entre as seguintes opções: soma (+), subtração (-), multiplicação (*) e divisão (/).*/

import 'dart:io';
void main(){
  double n1,n2, n3, n4, res;
  var op ;

  print('Operações:');
  print('+: soma');
  print('-: subtracao');
  print('*: multiplicação');
  print('/: dividir');
  print('Escolha a operacao');
  op = stdin.readLineSync();
  
  print('Digite o numero n1: ');
  n1 = double.parse(stdin.readLineSync()!);
  print('Digite o numero n2: ');
  n2 = double.parse(stdin.readLineSync()!);
  print('Digite o numero n3: ');
  n3 = double.parse(stdin.readLineSync()!);
  print('Digite o numero n4: ');
  n4 = double.parse(stdin.readLineSync()!);

  

  switch(op){
    case '+':
    res = n1+n2+n3+n4;
    print('Resultado: $res');
    break;

    case '-':
    res = n1-n2-n3-n4;
    print('Resultado: $res');
    break;

    case '*':
    res = n1*n2*n3*n4;
    print('Resultado: $res');
    break;

    case '/': 
    res= n1/n2/n3/n4;
    print('Resultado: $res');
    break;

    default:
    print('Operacao invalida');
  }


}