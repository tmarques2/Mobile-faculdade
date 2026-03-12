/*
Aula 05 - Exemplo polimorfismo
05/03/2026
*/

// cria a classe mae Animal
class Animal {
  void fazerSom() {
    print("O animal faz um som!");
  }
}

class Cachorro extends Animal {
  @override
  void fazerSom() {
    print("O cachorro late auau");
  }
}

class Gato extends Animal {
  @override
  void fazerSom() {
    print("O gato mia miau");
  }
}


void main(){
  Animal meuAnimal = Cachorro();
  meuAnimal.fazerSom();

  Animal meuAnimal1 = Gato();
  meuAnimal1.fazerSom();
}