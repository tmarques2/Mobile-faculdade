/*
Exemplo 03 orientação a objeto
Classe com atributo privado
26/02/2026
*/

class Pessoa{
  String ?_nome; // _nome é um atributo privado, ou seja, só pode ser acessado dentro da classe

  void setNome(String nome){
    _nome = nome;
  }

  String getNome(){
    return _nome!;
  }
}

class Aluno {
  String ? nome;
  getNome(){
    return nome;
  }
}

void main(){
  Pessoa cliente = Pessoa();
  cliente._nome = "Thainara";
  print("Nome do cliente: ${cliente.getNome()}");
  Pessoa Thainara = Pessoa();
  Thainara._nome = "Eric";
  print("${Thainara.getNome()}");
  Aluno Rebeca = Aluno();
  Rebeca.nome = "Rebeca";
  print("Nome do aluno: ${Rebeca.getNome()}");
}