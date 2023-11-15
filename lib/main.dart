import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'pages/createAccount_page.dart';
import 'pages/home_page.dart';
import 'pages/paciente_page.dart';
import 'pages/exercicios_page.dart';
import 'pages/historico_page.dart';
import 'pages/login_page.dart';
import 'pages/registerPacients_page.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
}

final GoRouter _router = GoRouter(
  routes: <RouteBase>[
    GoRoute(
      path: '/',
      builder: (BuildContext context, GoRouterState state) {
        return const LoginPage();
      },
      routes: <RouteBase>[
        GoRoute(
          path: 'createAccount',
          builder: (BuildContext context, GoRouterState state) {
            return const CreateAccountPage();
          },
        ),
        GoRoute(
          path: 'home',
          builder: (BuildContext context, GoRouterState state) {
            return const HomePage();
          },
        ),
        GoRoute(
          path: 'pacientes',
          builder: (BuildContext context, GoRouterState state) {
            return const PacientePage(
              pacientes: [],
            );
          },
        ),
        GoRoute(
          path: 'exercicios',
          builder: (BuildContext context, GoRouterState state) {
            return const ExerciciosPage();
          },
        ),
        GoRoute(
          path: 'historico',
          builder: (BuildContext context, GoRouterState state) {
            return const HistoricoPage();
          },
        ),
        GoRoute(
          path: 'registerPacients',
          builder: (BuildContext context, GoRouterState state) {
            return const RegisterPacients();
          },
        ),
      ],
    ),
  ],
);

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(routerConfig: _router, title: 'My App');
  }
}

// For Firebase JS SDK v7.20.0 and later, measurementId is optional
const FirebaseOptions web = FirebaseOptions(
    apiKey: "AIzaSyDdzjOFXsNVH31sKjaZLH8aWo1QCiEX1WI",
    authDomain: "fisioconecta-b9fcf.firebaseapp.com",
    projectId: "fisioconecta-b9fcf",
    storageBucket: "fisioconecta-b9fcf.appspot.com",
    messagingSenderId: "521264665454",
    appId: "1:521264665454:web:3d8531b1b608373550a77f",
    measurementId: "G-J2Z219LMQS");
