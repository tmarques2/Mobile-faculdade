import 'dart:io';

class carrinhoCompras {
  List<String> itens = [];
  List<double> quantidades = [];

  void adicionarItens(String nome, double valor) {
    itens.add(nome);
    quantidades.add(valor);
    print("item $nome adicionado");
  }

  void removerItem(String nome){
    int posicao = itens.indexOf(nome);
    
    if (posicao != -1) {
      itens.removeAt(posicao);
      quantidades.removeAt(posicao);
      print("Item '$nome' removido!");
    } else {
      print("Erro: Item não encontrado.");
    }
  }

  double calcularTotal() {
    double soma = 0;
    for (double valor in quantidades) {
      soma = soma + valor;
    }
    return soma;
  }
}


void main() {
  carrinhoCompras carrinho = carrinhoCompras();

  while (true) {
    print("\n--- CARRINHO ---");
    print("1 - Adicionar");
    print("2 - Remover");
    print("3 - Total");
    print("0 - Sair");
    stdout.write("Escolha: ");
    
    String? opcao = stdin.readLineSync();

    if (opcao == '0') break;

    if (opcao == '1') {
      stdout.write("Nome do item: ");
      String nome = stdin.readLineSync() ?? "";
      stdout.write("Valor: ");
      double valor = double.tryParse(stdin.readLineSync() ?? "0") ?? 0;
      
      carrinho.adicionarItens(nome, valor);
    } 
    else if (opcao == '2') {
      stdout.write("Nome para remover: ");
      String nome = stdin.readLineSync() ?? "";
      carrinho.removerItem(nome);
    } 
    else if (opcao == '3') {
      double total = carrinho.calcularTotal();
      print("Valor total no carrinho: R\$ ${total.toStringAsFixed(2)}");
    }
  }
}