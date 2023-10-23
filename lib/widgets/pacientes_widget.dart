import 'package:flutter/material.dart';
import 'package:flutter_application/pages/registerPacients_page.dart';

class PacientesListWidget extends StatelessWidget {
  final List<Pacientes> pacientes;

  const PacientesListWidget({super.key, required this.pacientes});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        itemBuilder: (context, index) {
          if (index < pacientes.length) {
            Pacientes paciente = pacientes[index];
            return Card(
              child: ListTile(
                title: Text('Nome: ${paciente.nome}'),
                subtitle: Text(paciente.nascimento),
              ),
            );
          } else {
            return null; // ou qualquer outro widget que você queira exibir para índices inválidos
          }
        },
      ),
    );
  }
}
