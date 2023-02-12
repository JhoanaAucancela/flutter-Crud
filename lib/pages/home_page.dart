import 'package:crud/pages/list_page.dart';
//import 'package:crud/pages/upload_page.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final List<Widget> _pages = [
    const PersonList(),
    //const UploadPage(),
    const PersonList(),
  ];

  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Lista de compras'),
        ),
        body: _pages[_selectedIndex],
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: _selectedIndex,
          onTap: (index) {
            setState(() {
              _selectedIndex = index;
            });
          },
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.shopping_cart_sharp),
              label: 'Lista de compras',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.power_input_rounded),
              label: '',
            ),
          ],
        ));
  }
}
