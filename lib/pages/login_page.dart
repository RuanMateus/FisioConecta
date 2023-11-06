import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:go_router/go_router.dart';
import '../assets/colors/colors.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

final reference = FirebaseFirestore.instance.doc(
  'userProfile/${FirebaseAuth.instance.currentUser!.uid}',
);

class _LoginPageState extends State<LoginPage> {
  final formKey = GlobalKey<FormState>();
  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  Future<void> login() async {
    final fireAuth = FirebaseAuth.instance;
    final email = emailController.text.trim();
    final password = passwordController.text;

    try {
      await fireAuth.signInWithEmailAndPassword(
        email: email,
        password: password,
      );
      emailController.clear();
      passwordController.clear();
    } catch (e) {
      const SnackBar(
        content: Text(
          'Verifique suas credenciais ou crie uma conta.',
        ),
      );
    }
  }

  void goToHome() {
    context.go('/homePage');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: [
                  AppFisioColors.greenApp,
                  AppFisioColors.gradienteBaixo,
                ],
              ),
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                alignment: Alignment.center,
                height: 50,
                width: 240,
                margin: const EdgeInsets.only(top: 150), // Adjusted margin
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
                key: formKey,
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(vertical: 0, horizontal: 24),
                  child: Column(
                    children: [
                      TextFormField(
                        controller: emailController,
                        textInputAction: TextInputAction.next,
                        style: const TextStyle(
                          color: AppFisioColors.blackApp,
                        ),
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Este campo é obrigatório.';
                          }
                          return null;
                        },
                        decoration: InputDecoration(
                          filled: true,
                          fillColor: AppFisioColors.whiteApp,
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
                              color: AppFisioColors.blackApp, fontSize: 18),
                        ),
                        cursorColor: AppFisioColors.greyApp,
                      ),
                      const SizedBox(height: 24),
                      TextFormField(
                        controller: passwordController,
                        textInputAction: TextInputAction.next,
                        style: const TextStyle(
                          color: AppFisioColors.blackApp,
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
                          fillColor: AppFisioColors.whiteApp,
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
                              color: AppFisioColors.blackApp, fontSize: 18),
                        ),
                        cursorColor: AppFisioColors.greyApp,
                      ),
                      const SizedBox(height: 50),
                      SizedBox(
                        width: double.maxFinite,
                        height: 52,
                        child: ElevatedButton(
                          onPressed: () {
                            if (formKey.currentState!.validate()) {
                              context.go('/home');
                            }
                          },
                          style: ElevatedButton.styleFrom(
                              backgroundColor: AppFisioColors.greenApp,
                              elevation: 3,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(12),
                              )),
                          child: const Text(
                            'Entrar',
                            style: TextStyle(
                                color: AppFisioColors.whiteApp,
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
                            style: TextStyle(
                                fontSize: 16, color: AppFisioColors.greyApp),
                          ),
                          TextButton(
                            onPressed: () => context.go('/createAccount'),
                            child: const Text(
                              'Clique aqui!',
                              style: TextStyle(
                                color: AppFisioColors.greyApp,
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
        ],
      ),
    );
  }
}
