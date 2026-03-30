import 'package:flutter/material.dart';
import 'user_model.dart';
import 'result_screen.dart';

class FormScreen extends StatefulWidget {
  const FormScreen({super.key});

  @override
  State<FormScreen> createState() => _FormScreenState();
}

class _FormScreenState extends State<FormScreen> {
  final _nomeController = TextEditingController();
  final _idadeController = TextEditingController();
  final _profissaoController = TextEditingController();

  String _sexo = 'Masculino';
  String _estadoCivil = 'Solteiro';

  void _concluir() {
    final dados = UserData(
      nome: _nomeController.text,
      idade: _idadeController.text,
      profissao: _profissaoController.text,
      sexo: _sexo,
      estadoCivil: _estadoCivil,
    );

    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => ResultScreen(user: dados)),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Cadastro",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        backgroundColor: Colors.deepPurple,
        foregroundColor: Colors.white,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _buildTextField(_nomeController, "Nome", Icons.person),
            const SizedBox(height: 15),
            _buildTextField(
              _idadeController,
              "Idade",
              Icons.cake,
              keyboardType: TextInputType.number,
            ),
            const SizedBox(height: 15),
            _buildTextField(_profissaoController, "Profissão", Icons.work),

            const Padding(
              padding: EdgeInsets.symmetric(vertical: 15),
              child: Text(
                "Sexo",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
            ),
            RadioListTile(
              title: const Text("Masculino"),
              value: "Masculino",
              groupValue: _sexo,
              onChanged: (v) => setState(() => _sexo = v!),
            ),
            RadioListTile(
              title: const Text("Feminino"),
              value: "Feminino",
              groupValue: _sexo,
              onChanged: (v) => setState(() => _sexo = v!),
            ),

            const Padding(
              padding: EdgeInsets.symmetric(vertical: 15),
              child: Text(
                "Estado Civil",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
            ),
            ...['Solteiro', 'Casado', 'Divorciado', 'Viúvo']
                .map(
                  (estado) => RadioListTile(
                    title: Text(estado),
                    value: estado,
                    groupValue: _estadoCivil,
                    onChanged: (v) => setState(() => _estadoCivil = v!),
                  ),
                )
                .toList(),

            const SizedBox(height: 30),
            SizedBox(
              width: double.infinity,
              height: 55,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.deepPurple,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                ),
                onPressed: _concluir,
                child: const Text(
                  "CONCLUIR",
                  style: TextStyle(color: Colors.white, fontSize: 18),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildTextField(
    TextEditingController controller,
    String label,
    IconData icon, {
    TextInputType? keyboardType,
  }) {
    return TextField(
      controller: controller,
      keyboardType: keyboardType,
      decoration: InputDecoration(
        labelText: label,
        prefixIcon: Icon(icon),
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(15)),
      ),
    );
  }
}
