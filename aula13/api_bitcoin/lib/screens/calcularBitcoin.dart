import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class Calcularbitcoin extends StatefulWidget {
  const Calcularbitcoin({super.key});

  @override
  State<Calcularbitcoin> createState() => _CalcularbitcoinState();
}

class _CalcularbitcoinState extends State<Calcularbitcoin> {

  final Color corVinho = const Color(0xFF580F1C);
  final Color corCereja = const Color(0xFFD20A2E);

  TextEditingController txtValor = TextEditingController();
  
  String moedaOrigem = 'BRL';
  String moedaDestino = 'USD';
  
  double precoBtcBRL = 0.0;
  double precoBtcUSD = 0.0;
  double precoBtcEUR = 0.0;
  double valorConvertido = 0.0;

  Future<void> verificarPrecos() async {
    var url = Uri.parse('https://blockchain.info/ticker');
    var resposta = await http.get(url);
    
    if (resposta.statusCode == 200) {
      var dados = jsonDecode(resposta.body);
      setState(() {
        precoBtcBRL = dados['BRL']['last'];
        precoBtcUSD = dados['USD']['last'];
        precoBtcEUR = dados['EUR']['last'];
      });

      if (mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: const Text('Preços atualizados com sucesso!'),
            backgroundColor: corCereja,
            duration: const Duration(seconds: 2),
          ),
        );
      }
    }
  }

  void calcular() {
    double valorDigitado = double.tryParse(txtValor.text.replaceAll(',', '.')) ?? 0.0;
    double taxaOrigem = 0.0;
    double taxaDestino = 0.0;

    if (moedaOrigem == 'BRL') taxaOrigem = precoBtcBRL;
    if (moedaOrigem == 'USD') taxaOrigem = precoBtcUSD;
    if (moedaOrigem == 'EUR') taxaOrigem = precoBtcEUR;

    if (moedaDestino == 'BRL') taxaDestino = precoBtcBRL;
    if (moedaDestino == 'USD') taxaDestino = precoBtcUSD;
    if (moedaDestino == 'EUR') taxaDestino = precoBtcEUR;

    if (taxaOrigem > 0 && taxaDestino > 0) {
      setState(() {
        valorConvertido = (valorDigitado / taxaOrigem) * taxaDestino;
      });
    }
  }

  void limpar() {
    setState(() {
      txtValor.clear();
      valorConvertido = 0.0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      appBar: AppBar(
        title: const Text('Conversor BitCoin', style: TextStyle(fontWeight: FontWeight.bold)),
        backgroundColor: corVinho,
        foregroundColor: Colors.white,
        elevation: 0,
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              width: double.infinity,
              padding: const EdgeInsets.symmetric(vertical: 30),
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [corVinho, corCereja],
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                ),
                borderRadius: const BorderRadius.only(
                  bottomLeft: Radius.circular(30),
                  bottomRight: Radius.circular(30),
                ),
              ),
              child: Column(
                children: [
                  const Text(
                    'Preço do Bitcoin (R\$)',
                    style: TextStyle(color: Colors.white70, fontSize: 16),
                  ),
                  const SizedBox(height: 8),
                  Text(
                    precoBtcBRL > 0 ? 'R\$ ${precoBtcBRL.toStringAsFixed(2)}' : '---',
                    style: const TextStyle(
                      color: Colors.white, 
                      fontSize: 32, 
                      fontWeight: FontWeight.bold
                    ),
                  ),
                ],
              ),
            ),
            
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                children: [
                  Card(
                    elevation: 4,
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
                    child: Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Column(
                        children: [
                          TextField(
                            controller: txtValor,
                            keyboardType: const TextInputType.numberWithOptions(decimal: true),
                            decoration: InputDecoration(
                              labelText: 'Digite o valor',
                              labelStyle: TextStyle(color: corVinho),
                              prefixIcon: Icon(Icons.monetization_on, color: corCereja),
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                                borderSide: BorderSide(color: corCereja, width: 2),
                              ),
                            ),
                          ),
                          const SizedBox(height: 25),
                          
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text('De (Origem):', style: TextStyle(fontWeight: FontWeight.bold, color: corVinho)),
                                  _buildRadio('R\$', 'BRL', moedaOrigem, (v) => setState(() => moedaOrigem = v!)),
                                  _buildRadio('Dólar', 'USD', moedaOrigem, (v) => setState(() => moedaOrigem = v!)),
                                  _buildRadio('Euro', 'EUR', moedaOrigem, (v) => setState(() => moedaOrigem = v!)),
                                ],
                              ),
                              Container(height: 100, width: 1, color: Colors.grey[300]),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text('Para (Destino):', style: TextStyle(fontWeight: FontWeight.bold, color: corVinho)),
                                  _buildRadio('R\$', 'BRL', moedaDestino, (v) => setState(() => moedaDestino = v!)),
                                  _buildRadio('Dólar', 'USD', moedaDestino, (v) => setState(() => moedaDestino = v!)),
                                  _buildRadio('Euro', 'EUR', moedaDestino, (v) => setState(() => moedaDestino = v!)),
                                ],
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(height: 25),

                  Text(
                    'Valor Convertido',
                    style: TextStyle(fontSize: 16, color: Colors.grey[600]),
                  ),
                  Text(
                    '\$ ${valorConvertido.toStringAsFixed(2)}',
                    style: TextStyle(
                      fontSize: 28, 
                      fontWeight: FontWeight.bold, 
                      color: corVinho
                    ),
                  ),
                  const SizedBox(height: 30),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      _buildButton('Verificar', Icons.refresh, verificarPrecos, corVinho),
                      _buildButton('Calcular', Icons.calculate, calcular, corCereja),
                      _buildButton('Limpar', Icons.clear, limpar, Colors.grey[700]!),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildRadio(String titulo, String valor, String grupo, Function(String?) onChanged) {
    return Row(
      children: [
        Radio<String>(
          value: valor,
          groupValue: grupo,
          activeColor: corCereja,
          onChanged: onChanged,
        ),
        Text(titulo),
      ],
    );
  }

  Widget _buildButton(String texto, IconData icone, VoidCallback onPressed, Color cor) {
    return ElevatedButton.icon(
      onPressed: onPressed,
      icon: Icon(icone, size: 18),
      label: Text(texto),
      style: ElevatedButton.styleFrom(
        backgroundColor: cor,
        foregroundColor: Colors.white,
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
      ),
    );
  }
}