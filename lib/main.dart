import 'package:flutter/material.dart';
import 'package:uzum_bank/features/auth/presentation/pages/enter_password/enter_password.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      initialRoute: 'enter_password',
      routes: {'home': (context) => EnterPasswordScreen()},
    );
  }
}
