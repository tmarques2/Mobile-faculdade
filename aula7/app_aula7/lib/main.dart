import 'package:flutter/material.dart';

void main() {
  runApp(Telaprincipal());
}

class Telaprincipal extends StatelessWidget {
  const Telaprincipal({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Campotexto(),
    );
  }
}


class Campotexto extends StatefulWidget {
  const Campotexto({super.key});

  @override
  State<Campotexto> createState() => _CampotextoState();
}

class _CampotextoState extends State<Campotexto> {

  TextEditingController ctexto = TextEditingController();
  String? msg;
  void exibir(){
    setState(() {
      ctexto.text;
    });
  }

  void limpar(){
    setState(() {
      ctexto.text="";
      msg="";
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Aplicativo Caixa de texto'),
        backgroundColor: Colors.blue,
      ),

      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [

          TextField(
            keyboardType: TextInputType.name,
            decoration: InputDecoration(
              labelText: 'Digite seu nome',
              
            ),
            // monitora o que esta sendo digitado 
            controller: ctexto,

          ),

            TextField(
              keyboardType: TextInputType.number,
              decoration: InputDecoration(labelText: 'Digite um numero'),

              onSubmitted: (text) {
                setState(() {
                  msg=text;
                  print(text);
                });
                
              },
            ),

            Container(
              width: 200,
              height: 50,
              child: Text(ctexto.text,style: TextStyle(fontSize: 20,color: Colors.white),),
              color: Colors.blue,

            ),

            Container(
              width: 200,
              height: 50,
              child: Text('$msg',style: TextStyle(fontSize: 20,color: Colors.white),),
              color: Colors.blue,

            ),

            // Cria o Widget Botao

          ElevatedButton(
            onPressed: exibir, child: Text('Exibir')),

            TextButton(onPressed: limpar, child: Text('Limpar'))

        ],
      ),
    );
  }
}
