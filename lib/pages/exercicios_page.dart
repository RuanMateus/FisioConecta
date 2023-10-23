import 'package:flutter/material.dart';
import '../widgets/navegation_widget.dart';

class ExerciciosPage extends StatefulWidget {
  const ExerciciosPage({super.key});

  @override
  State<ExerciciosPage> createState() => _ExerciciosPageState();
}

class _ExerciciosPageState extends State<ExerciciosPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            automaticallyImplyLeading: false, title: const Text('Exercicios')),
        body: ListView(
          children: const <Widget>[
            ListTile(
              leading: Icon(Icons.fitness_center_rounded),
              title: Text('Abdominal'),
              subtitle: Text('10'),
            ),
          ],
        ),
        bottomNavigationBar: const NavigacaoBar());
  }
}
