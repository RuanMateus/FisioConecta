import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class RegisterPacients extends StatefulWidget {
  const RegisterPacients({Key? key}) : super(key: key);

  @override
  State<RegisterPacients> createState() => _RegisterPacientsState();
}

class Pacientes {
  String nome;
  String email;
  String nascimento;

  Pacientes({required this.nome, required this.email, required this.nascimento});
}

class _RegisterPacientsState extends State<RegisterPacients> {
  final TextEditingController _nomeController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _nascimentoController = TextEditingController();

  // Lista para armazenar os pacientes
  List<Pacientes> pacientes = [];

  void _register() {
    if (_nomeController.text.isNotEmpty &&
        _emailController.text.isNotEmpty &&
        _nascimentoController.text.isNotEmpty) {
      // Declaração do paciente no escopo da classe
      Pacientes paciente = Pacientes(
        nome: _nomeController.text,
        email: _emailController.text,
        nascimento: _nascimentoController.text,
      );

      // Adiciona o paciente à lista
      pacientes.add(paciente);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 80, horizontal: 16),
        child: Column(
          children: [
            Row(
              children: [
                IconButton(
                  onPressed: () => context.go('/home'),
                  icon: const Icon(Icons.arrow_back),
                )
              ],
            ),
            Container(
              padding: const EdgeInsets.symmetric(vertical: 18, horizontal: 0),
              child: const Text('Registre um novo paciente'),
            ),
            Form(
              child: Column(
                children: [
                  // ... (código existente)

                  SizedBox(
                    width: double.maxFinite,
                    child: ElevatedButton(
                      onPressed: () {
                        setState(() {
                          _register();
                          _nomeController.clear();
                          _emailController.clear();
                          _nascimentoController.clear();
                        });
                      },
                      style: ElevatedButton.styleFrom(),
                      child: const Text('Cadastrar'),
                    ),
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
