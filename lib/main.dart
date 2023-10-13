import 'package:flutter/material.dart';
import 'pages/createAccount_page.dart';
import 'pages/home_page.dart';
import 'pages/paciente_page.dart';
import 'pages/exercicios_page.dart';
import 'pages/historico_page.dart';
import 'package:flutter_application/pages/login_page.dart';
import 'package:go_router/go_router.dart';

void main() {
  runApp(const MyApp());
}

final GoRouter _router = GoRouter(routes: <RouteBase>[
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
            }),
        GoRoute(
            path: 'home',
            builder: (BuildContext context, GoRouterState state) {
              return const HomePage();
            }),
        GoRoute(
            path: 'pacientes',
            builder: (BuildContext context, GoRouterState state) {
              return const PacientePage();
            }),
        GoRoute(
            path: 'exercicios',
            builder: (BuildContext context, GoRouterState state) {
              return const ExerciciosPage();
            }),
        GoRoute(
            path: 'historico',
            builder: (BuildContext context, GoRouterState state) {
              return const HistoricoPage();
            }),
      ])
]);

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: _router,
      title: 'My App',
    );
  }
}
