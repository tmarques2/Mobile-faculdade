class Carro {
  String marca;
  String modelo;
  int ano;
  bool motor_ligado = false;

  Carro(this.marca, this.modelo, this.ano);

  void ligar_motor() {
    if (motor_ligado) {
      print("Motor já está ligado");
    } else {
      motor_ligado = true;
    }
  }

  void desligar_motor() {
    if (!motor_ligado) {
      print("Motor ja está desligado");
    } else {
      motor_ligado = false;
    }
  }

  String statusMotor() {
    if (motor_ligado) {
      return "O motor do seu $modelo está LIGADO.";
    } else {
      return "O motor do seu $modelo está DESLIGADO.";
    }
  }
}

void main(){
  Carro meuCarro = Carro("chevrolet", "onix", 2024);
  meuCarro.ligar_motor();
  print(meuCarro.statusMotor());
  meuCarro.desligar_motor();
  print(meuCarro.statusMotor());
}