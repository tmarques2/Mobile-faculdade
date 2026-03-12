class Pessoa {
  String _nome = "";
  int _idade = 0;

  String get nome => _nome;
  int get idade => _idade;

  set nome(String novoNome) {
    _nome = novoNome;
  }

  set idade(int novaIdade) {
    if (novaIdade >= 0) {
      _idade = novaIdade;
    } else {
      print("Idade não pode ser menor q 0");
    }
  }

  void mostrarInfos() {
    print("Nome: $_nome \nIdade: $_idade");
  }
}

void main() {
  Pessoa pessoa = Pessoa();
  pessoa.nome = "Thainara";
  pessoa.idade = 19;
  pessoa.mostrarInfos();
}
