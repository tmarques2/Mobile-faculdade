import 'dart:io';

class carrinhoCompras {
  List<String> itens = [];
  List<double> quantidades = [];

  void adicionarItens(String nome, double valor) {
    itens.add(nome);
    quantidades.add(valor);
    print("item $nome adicionado");
  }
  void removerItem()
}
