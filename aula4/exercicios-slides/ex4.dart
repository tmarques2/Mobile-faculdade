import 'dart:io';

class Banco {
  double saldoAtual = 10000;

  void saque(double valor) {
    if (valor <= saldoAtual) {
      saldoAtual -= valor;
    } else {
      print("Valor maior do que o saldo atual");
    }
    print("saldo atual: $saldoAtual");
  }

  void pix(double valor) {
    if (valor <= saldoAtual) {
      saldoAtual -= valor;
    } else {
      print("Valor maior do que o saldo atual");
    }
    print("saldo atual: $saldoAtual");
  }

  void emprestimo(double valor) {
    saldoAtual += valor;
    print("saldo atual: $saldoAtual");
  }

  void transferencia(double valor) {
    if (valor <= saldoAtual) {
      saldoAtual -= valor;
    } else {
      print("Valor maior do que o saldo atual");
    }
    print("saldo atual: $saldoAtual");
  }
}

void main() {
  Banco meubanco = Banco();
  while (true) {
    print(
      "Qual ação deseja realizar: \n1-Saque \n2-Pix \n3-Emprestimo \n4-Transferencia \n0-Sair",
    );
    int op = int.parse(stdin.readLineSync()!);

    if (op == 0) {
      print("saindo do banco");
      break;
    }
    stdout.write("Digite o valor da transação: ");
    double valor = double.parse(stdin.readLineSync()!);

    if (op > 0 && op < 5) {
      switch (op) {
        case 1:
          meubanco.saque(valor);
          break;
        case 2:
          meubanco.pix(valor);
          break;
        case 3:
          meubanco.emprestimo(valor);
          break;
        case 4:
          meubanco.transferencia(valor);
          break;
      }
    } else {
      print("opção invalida, tente novamente");
    }
  }
}
