import 'package:flutter/material.dart';

class CustomBottonBar extends StatelessWidget {
  const CustomBottonBar({super.key});

  @override
  Widget build(BuildContext context) {
    return customBar();
  }

  BottomNavigationBar customBar() {
    return BottomNavigationBar(
      backgroundColor: Colors.black,
      selectedItemColor: Colors.white,
      unselectedItemColor: Colors.white54,
      selectedLabelStyle: const TextStyle(fontSize: 12.0),
      unselectedLabelStyle: const TextStyle(fontSize: 12.0),
      items: const <BottomNavigationBarItem>[
        BottomNavigationBarItem(icon: Icon(Icons.home, size: 35.0,), label: 'Inicio'),
        BottomNavigationBarItem(icon: Icon(Icons.search, size: 35.0,), label: 'Buscar'),
        BottomNavigationBarItem(icon: Icon(Icons.library_books_outlined, size: 35.0,), label: 'Tu biblioteca'),
      ]
    );
  }
}
