abstract class Automoveis {
  String nome;
  String cor;
  int ano;

  Automoveis(this.nome, this.cor, this.ano);

  void colocarCinto();
  void ligar();
  void desligar();
  void dirigir();
}

class Carro extends Automoveis {
  Carro(String nome, String cor, int ano) : super(nome, cor, ano);

  @override
  void colocarCinto() {
    print("Cinto colocado");
  }

  @override
  void ligar() {
    print("$nome ligado");
  }

  @override
  void desligar() {
    print("$nome desligado");
  }

  @override
  void dirigir() {
    print("Dirigindo $nome $cor $ano");
  }
}

void main() {
  Carro carro = Carro("Civic", "azul", 2020);
  carro.colocarCinto();
  carro.ligar();
  carro.dirigir();
  carro.desligar();
}
