/*
Exemplo 02 - Programação orientada a objeto
26/02/2026
*/

class Carro{
  String marca = "Nissan";
  int ano = 2026;

  void abrirPorta(int nqtde){
    if (nqtde==1) {
      print("Porta do motorista aberta");
    }
    else if (nqtde==2) {
      print("Porta do motorista e do passageiro aberta");
    }
    else if (nqtde==3) {
      print("Porta do motorista, passageiro e traseira aberta");
    }
    else {
      print('As 4 portas do veiculo estão abertas');
    }
  }

  void fecharPorta(int nqtde){
    if (nqtde==1) {
      print("Porta do motorista fechada");
    }
    else if (nqtde==2) {
      print("Porta do motorista e do passageiro fechada");
    }
    else if (nqtde==3) {
      print("Porta do motorista, passageiro e traseira fechada");
    }
    else {
      print('As 4 portas do veiculo estão fechadas');
    }
  }

  void liga(){
    print('Carro ligado');
  }

  void desliga(){
    print('Carro desligado');
  }
}

void main() {
  Carro Tiida = Carro();
  Tiida.marca = "Nissan Tiida";
  Tiida.liga();
  Tiida.fecharPorta(4);
  print("Exibe infiormações do carro: ${Tiida.marca} - ${Tiida.ano}");
  Tiida.abrirPorta(2);
}