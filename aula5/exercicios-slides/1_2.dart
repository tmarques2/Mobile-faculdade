// 1. Classe abstrata Máquina Industrial
abstract class MaquinaIndustrial {
  String nome;
  double potencia;
  bool status;

  MaquinaIndustrial(this.nome, this.potencia, this.status);

  // Métodos abstratos [cite: 187]
  void ligar();
  void desligar();
}

// 2. Subclasse Prensa [cite: 188]
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

// 2. Subclasse Robô Solda [cite: 189]
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
