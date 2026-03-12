/*
Exemplo classe abstrata
05/03/2026
*/

// Interface ou contrato = classe abstrata

<<<<<<< HEAD
abstract class Forma {
=======
abstract class Forma{

>>>>>>> 1e3f306c5a9fe8367400afe70047031b43cd1fa7
  double calcularArea();
}

// Classe que vai implementar essa interface
<<<<<<< HEAD
class Circulo implements Forma {
  double raio;
  Circulo(this.raio);

  //polimorfismo
  @override
  double calcularArea() {
    return 3.14 * raio * raio;
  }
}

//classe retangulo
class Retangulo implements Forma {
  double largura, altura;
  Retangulo(this.largura, this.altura);

  @override
  double calcularArea() {
    return altura * largura;
  }
}

void main() {
  Forma forma1 = Circulo(5);
  Forma forma2 = Retangulo(4, 6);

  print("A area do circulo ${forma1.calcularArea()}");
  print("A area do retangulo: ${forma2.calcularArea()}");
}
=======

class Circulo implements Forma{
  double raio;
  Circulo(this.raio);

  // Polimorfismo

  @override

  double calcularArea(){
    return 3.14*raio*raio;
  }
}


// Classe retangulo

class Retangulo implements Forma{
  double largura, altura;
  Retangulo(this.largura,this.altura);

  @override

  double calcularArea(){
    return altura*largura;
  }
}

void main(){

  Forma forma1 = Circulo(5);

  Forma forma2 = Retangulo(4, 6);

  print("A area do circulo: ${forma1.calcularArea()}");
  print("A area do retangulo: ${forma2.calcularArea()}");
}
>>>>>>> 1e3f306c5a9fe8367400afe70047031b43cd1fa7
