/*
Exemplo 04 classe usuario
26/02/2026
*/

class Usuario {
  String ? usuario;
  String ? senha;

  void autentica() {
    String usuario = "Senai";
    String senha = "senai@2026";

    if (this.usuario==usuario && this.senha==senha) {
      print("Usuário autenticado com sucesso!");
    } else {
      print("Usuário ou senha incorretos!");
    }
  }
}

void main() {
  Usuario usuario1 = Usuario();
  usuario1.usuario = "Senai";
  usuario1.senha = "senai@2026";
  usuario1.autentica();

  Usuario usuario2 = Usuario();
  usuario2.usuario = "Thainara";
  usuario2.senha = "thainara@2026";
  usuario2.autentica();
}