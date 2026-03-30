import 'package:exercicio1/screens/brasil.dart';
import 'package:exercicio1/screens/italia.dart';
import 'package:exercicio1/screens/japao.dart';
import 'package:exercicio1/screens/mexico.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const NavBottom());
}

class NavBottom extends StatelessWidget {
  const NavBottom({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: true,
      ),
      home: const NavScreen(),
    );
  }
}

class NavScreen extends StatefulWidget {
  const NavScreen({super.key});

  @override
  State<NavScreen> createState() => _NavScreenState();
}

class _NavScreenState extends State<NavScreen> {
  int selectindex = 0;

  static const List<Widget> _widgetOptions = <Widget>[
    Brasil(),
    Italia(),
    Japao(),
    Mexico(),
  ];

  void onItemTapped(int index) {
    setState(() {
      selectindex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(index: selectindex, children: _widgetOptions),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: selectindex,
        onTap: onItemTapped,
        type: BottomNavigationBarType.shifting,
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.white70,
        selectedLabelStyle: const TextStyle(fontWeight: FontWeight.bold),
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.restaurant_menu),
            label: 'Brasil',
            backgroundColor: Color(0xFF1B5E20),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.dinner_dining),
            label: 'Itália',
            backgroundColor: Color(0xFFC62828),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.rice_bowl),
            label: 'Japão',
            backgroundColor: Color(0xFF212121),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.local_fire_department),
            label: 'México',
            backgroundColor: Color(0xFFEF6C00),
          ),
        ],
      ),
    );
  }
}
