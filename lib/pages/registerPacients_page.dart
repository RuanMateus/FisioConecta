import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class RegisterPacients extends StatefulWidget {
  const RegisterPacients({super.key});

  @override
  State<RegisterPacients> createState() => _RegisterPacientsState();
}

class _RegisterPacientsState extends State<RegisterPacients> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
      padding: const EdgeInsets.symmetric(vertical: 80, horizontal: 16),
      child: Column(children: [
        Row(
          children: [
            IconButton(
                onPressed: () => context.go('/'),
                icon: const Icon(Icons.arrow_back))
          ],
        ),
        Container(
            padding: const EdgeInsets.symmetric(vertical: 18, horizontal: 0),
            child: const Text('Registre um novo paciente')),
        Form(
            child: Column(
          children: [
            TextFormField(
              decoration: InputDecoration(
                  label: const Text(
                    'Nome completo:',
                    style: TextStyle(color: Colors.black87),
                  ),
                  filled: true,
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12))),
            ),
            const SizedBox(height: 24),
            TextFormField(
              decoration: InputDecoration(
                  label: const Text(
                    'Email:',
                    style: TextStyle(color: Colors.black87),
                  ),
                  filled: true,
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12))),
            ),
            const SizedBox(height: 24),
            TextFormField(
              decoration: InputDecoration(
                  label: const Text(
                    'Data de Nacimento:',
                    style: TextStyle(color: Colors.black87),
                  ),
                  filled: true,
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12))),
            ),
            const SizedBox(height: 24),
            SizedBox(
              width: double.maxFinite,
              child: ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(),
                child: const Text(
                  'Entrar',
                ),
              ),
            )
          ],
        ))
      ]),
    ));
  }
}
