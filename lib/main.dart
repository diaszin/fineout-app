import 'package:fineout_app/routes.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      // Rota inicial
      initialRoute: RoutesGenerator.loginPage,
      // Função geradora de rota
      onGenerateRoute: RoutesGenerator.generate,
    );
  }
}