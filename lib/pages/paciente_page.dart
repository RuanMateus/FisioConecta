import 'package:flutter/material.dart';
<<<<<<< HEAD
import 'package:go_router/go_router.dart';
import 'navegation_page.dart';

class PacientePage extends StatefulWidget {
  const PacientePage({Key? key}) : super(key: key);
=======
import 'navegation_page.dart';

class PacientePage extends StatefulWidget {
  const PacientePage({super.key});
>>>>>>> 68514eee5f6c19f5e56c431507b0dfc1c0b4969a

  @override
  State<PacientePage> createState() => _PacientePageState();
}

class _PacientePageState extends State<PacientePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Paciente'),
        automaticallyImplyLeading: false,
        actions: [
          IconButton(
            icon: const Icon(Icons.add),
            color: Colors.green,
            onPressed: () {
              // Navigate to the page to add new patients
              context.go('/registerPacients');
            },
          ),
        ],
      ),
      body: ListView(
        children: const <Widget>[
          ListTile(
            leading: Icon(Icons.account_circle),
            title: Text('Nome do paciente'),
            subtitle: Text('dd/mm'),
          ),
        ],
      ),
      bottomNavigationBar: const NavigacaoBar(),
    );
=======
        appBar: AppBar(title: const Text('Paciente')),
        body: ListView(
          children: const <Widget>[
            ListTile(
              leading: Icon(Icons.account_circle),
              title: Text('Nome do paciente'),
              subtitle: Text('dd/mm'),
            ),
          ],
        ),
        bottomNavigationBar: const NavigacaoBar());
>>>>>>> 68514eee5f6c19f5e56c431507b0dfc1c0b4969a
  }
}
