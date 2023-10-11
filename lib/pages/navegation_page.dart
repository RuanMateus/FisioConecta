import 'package:flutter/material.dart';

class NavigacaoBar extends StatelessWidget {
  const NavigacaoBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      selectedItemColor: const Color(0xFF2196F3),
      unselectedItemColor: const Color(0xFF4CAF50),
      items: const <BottomNavigationBarItem>[
        BottomNavigationBarItem(
          icon: Icon(Icons.home),
          label: 'Home',
        ),
        BottomNavigationBarItem(
          // activeIcon: PacientePage(),
          icon: Icon(Icons.people),
          label: 'Pacientes',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.fitness_center),
          label: 'Exercicios',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.history),
          label: 'Historico',
        ),
      ],
    );
  }
}
