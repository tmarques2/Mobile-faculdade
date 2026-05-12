import 'package:api_bitcoin/screens/calcularBitcoin.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(fontFamily: "Montserrat"),
      home: Calcularbitcoin(),
      debugShowCheckedModeBanner: false,
    );
  }
}