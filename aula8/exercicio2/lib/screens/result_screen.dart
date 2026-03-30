import 'package:flutter/material.dart';
import 'user_model.dart';

class ResultScreen extends StatelessWidget {
  final UserData user;
  const ResultScreen({super.key, required this.user});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Dados Coletados"),
        backgroundColor: Colors.deepPurple,
        foregroundColor: Colors.white,
      ),
      body: Center(
        child: Card(
          margin: const EdgeInsets.all(20),
          elevation: 10,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
          ),
          child: Padding(
            padding: const EdgeInsets.all(25),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                const Icon(
                  Icons.assignment_ind,
                  size: 80,
                  color: Colors.deepPurple,
                ),
                const Divider(height: 40),
                _infoRow("Nome:", user.nome),
                _infoRow("Idade:", user.idade),
                _infoRow("Profissão:", user.profissao),
                _infoRow("Sexo:", user.sexo),
                _infoRow("Estado Civil:", user.estadoCivil),
                const SizedBox(height: 20),
                TextButton(
                  onPressed: () => Navigator.pop(context),
                  child: const Text(
                    "VOLTAR",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _infoRow(String label, String value) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 5),
      child: Row(
        children: [
          Text(
            label,
            style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
          ),
          const SizedBox(width: 10),
          Text(value, style: const TextStyle(fontSize: 16)),
        ],
      ),
    );
  }
}
