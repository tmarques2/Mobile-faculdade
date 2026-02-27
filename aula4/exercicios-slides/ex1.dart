import 'dart:io';

class Aluno{
    String ? nome;
    String ? curso;
    int ? idade;

    void cadastrar(){
        stdout.write('Digite o Nome: ');
        nome = stdin.readLineSync()!;

        stdout.write('Digite o Curso: ');
        curso = stdin.readLineSync()!;

        stdout.write('Digite o Idade: ');
        idade = int.parse(stdin.readLineSync()!);
    }

    void apresentacao(){
        print("Nome: ${nome}, Idade: ${idade}, Curso: ${curso}");
    }
}

void main(){
    Aluno thainara = Aluno();
    thainara.cadastrar();
    thainara.apresentacao();
}