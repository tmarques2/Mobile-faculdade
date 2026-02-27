/*
Programação orientada a objeto conceito de herança
26/02/2026
*/

class Animal {
  String ? nome;
  int ? idade;

  void dormir(){
    print("O animal ${nome} está dormindo");
  }
}

class Cachorro extends Animal {
  void latir(){
    print("O cachorro ${nome} está latindo");
  }
}

class Tigre extends Animal {
  String ? cor;
  void atacar(){
    print("O tigre ${nome} atacou");
  }
}

void main(){
  Cachorro Rocky = Cachorro();
  Rocky.nome = "Rocky";
  Rocky.idade = 3;
  Rocky.dormir();
  Rocky.latir();

  Tigre Memphis = Tigre();
  Memphis.nome = "Memphis";
  Memphis.cor = "Branco";
  Memphis.idade = 30;
  Memphis.atacar();
}