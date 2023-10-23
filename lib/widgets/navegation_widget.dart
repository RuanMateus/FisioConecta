import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

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
      onTap: (int index) {
        switch (index) {
          case 0:
            context.go('/home');
            break;
          case 1:
            context.go('/pacientes');
            break;
          case 2:
            context.go('/exercicios');
            break;
          case 3:
            context.go('/historico');
            break;
          default:
            break;
        }
      },
    );
  }
}
