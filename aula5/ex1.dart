/*
Aula 05 - Exemplo polimorfismo
05/03/2026
*/

<<<<<<< HEAD
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
=======

// Cria a classe mae Animal
class Animal{
  void fazerSom(){
    print('O animal faz um som !');
  }
}

// Cria a classe filha
class Cachorro extends Animal{

  // polimorfismo
  @override
  void fazerSom() {
   print('O Cachorro late Au au');
  }
}

 // Cria a classe filha 
 class Gato extends Animal{
  @override
  void fazerSom() {
   print('O Gato mia');
  }
 }


 void main(){
>>>>>>> 1e3f306c5a9fe8367400afe70047031b43cd1fa7
  Animal meuAnimal = Cachorro();
  meuAnimal.fazerSom();

  Animal meuAnimal1 = Gato();
  meuAnimal1.fazerSom();
<<<<<<< HEAD
}
=======
 }
>>>>>>> 1e3f306c5a9fe8367400afe70047031b43cd1fa7
