import 'package:flutter/material.dart';

void main() {
  runApp(const TelaApp());
}

class TelaApp extends StatelessWidget {
  const TelaApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("App aula 6 - Multi child layout"),
          backgroundColor: Colors.blueAccent,
        ),
        body: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Icon(Icons.star, color: Colors.yellow, size: 50),
                Icon(Icons.favorite, color: Colors.red, size: 50),
                Icon(Icons.thumb_up, color: Colors.blue, size: 50),
              ],
            ),

            SizedBox(height: 50),

            Stack(
              alignment: AlignmentGeometry.center,
              children: [
                Container(width: 200, height: 200, color: Colors.blueAccent),
                Container(
                  width: 100,
                  height: 100,
                  color: Colors.black,
                  child: Text(
                    "Stack",
                    style: TextStyle(fontSize: 20, color: Colors.white),
                    textAlign: TextAlign.center,
                  ),
                ),
              ],
            ),

            SizedBox(
              height: 350,
              child: ListView(
                children: [
                  ListTile(
                    leading: Icon(Icons.person),
                    title: Text("Usuário 1"),
                    subtitle: Text("Descrição do usuário 1"),
                  ),
                  ListTile(
                    leading: Icon(Icons.person_2),
                    title: Text("Usuário 2"),
                    subtitle: Text("Descrição do usuário 2"),
                  ),
                  ListTile(
                    leading: Icon(Icons.person_3),
                    title: Text("Usuário 3"),
                    subtitle: Text("Descrição do usuário 3"),
                  ),
                  ListTile(
                    leading: Icon(Icons.person_4),
                    title: Text("Usuário 4"),
                    subtitle: Text("Descrição do usuário 4"),
                  ),
                  ListTile(
                    leading: Icon(Icons.person_4_outlined),
                    title: Text("Usuário 5"),
                    subtitle: Text("Descrição do usuário 5"),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
