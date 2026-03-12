//Classe abstrata
abstract class MaquinaIndustrial {
  String nome;
  double potencia;
  bool status;

  MaquinaIndustrial(this.nome, this.potencia, this.status);

  void ligar();
  void desligar();
}

class Prensa extends MaquinaIndustrial {
  double pressaoToneladas;

  Prensa(String nome, double potencia, bool status, this.pressaoToneladas)
    : super(nome, potencia, status);

  @override
  void ligar() {
    status = true;
    print(
      "A prensa $nome está ligando... Aplicando $pressaoToneladas toneladas.",
    );
  }

  @override
  void desligar() {
    status = false;
    print("A prensa $nome foi desligada.");
  }
}

class RoboSolda extends MaquinaIndustrial {
  String tipoSolda;

  RoboSolda(String nome, double potencia, bool status, this.tipoSolda)
    : super(nome, potencia, status);

  @override
  void ligar() {
    status = true;
    print("Robô de solda $nome iniciado. Operando com solda tipo: $tipoSolda.");
  }

  @override
  void desligar() {
    status = false;
    print("Robô $nome foi desligado");
  }
}

void main() {
  Prensa prensa = Prensa("sla", 800, false, 5);
  prensa.ligar();
  prensa.desligar();

  RoboSolda robo = RoboSolda("bla", 900, false, "nsei");
  robo.ligar();
  robo.desligar();
}
