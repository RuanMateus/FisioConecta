import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../assets/colors/colors.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            alignment: Alignment.center,
            height: 50,
            width: 240,
            margin: const EdgeInsets.only(top: 150),
            child: Image.asset(
              Theme.of(context).brightness == Brightness.light
                  ? 'lib/assets/images/LogoFisioConecta.png'
                  : 'lib/assets/images/LogoFisioConectaBranco.png',
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(
              top: 0,
              bottom: 32,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Gerenciamento de pacientes para fisioterapeutas.',
                  style: TextStyle(
                    fontSize: 16,
                  ),
                )
              ],
            ),
          ),
          Form(
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 0, horizontal: 24),
              child: Column(
                children: [
                  TextFormField(
                    textInputAction: TextInputAction.next,
                    style: const TextStyle(
                      color: AppNotificaColors.blackApp,
                    ),
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Este campo é obrigatório.';
                      }
                      return null;
                    },
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: AppNotificaColors.whiteApp,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12),
                      ),
                      disabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12),
                      ),
                      floatingLabelBehavior: FloatingLabelBehavior.never,
                      hintText: 'Digite seu email',
                      labelText: 'Email:',
                      labelStyle: const TextStyle(
                          color: AppNotificaColors.blackApp, fontSize: 18),
                    ),
                    cursorColor: AppNotificaColors.greyApp,
                  ),
                  const SizedBox(height: 24),
                  TextFormField(
                    textInputAction: TextInputAction.next,
                    style: const TextStyle(
                      color: AppNotificaColors.blackApp,
                    ),
                    obscureText: true,
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Este campo é obrigatório.';
                      }
                      return null;
                    },
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: AppNotificaColors.whiteApp,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12),
                      ),
                      disabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12),
                      ),
                      floatingLabelBehavior: FloatingLabelBehavior.never,
                      labelText: 'Senha:',
                      hintText: 'Digite sua senha',
                      labelStyle: const TextStyle(
                          color: AppNotificaColors.blackApp, fontSize: 18),
                    ),
                    cursorColor: AppNotificaColors.greyApp,
                  ),
                  const SizedBox(height: 50),
                  SizedBox(
                    width: double.maxFinite,
                    height: 52,
                    child: ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                          backgroundColor: AppNotificaColors.greenApp,
                          elevation: 3,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(12),
                          )),
                      child: const Text(
                        'Entrar',
                        style: TextStyle(
                            color: AppNotificaColors.whiteApp,
                            fontSize: 20,
                            fontWeight: FontWeight.w600),
                      ),
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      const Text(
                        'Não possui uma conta?',
                        style: TextStyle(fontSize: 16),
                      ),
                      TextButton(
                        onPressed: () => context.go('/createAccount'),
                        child: const Text(
                          'Clique aqui!',
                          style: TextStyle(
                            color: AppNotificaColors.greenApp,
                            fontSize: 16,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
