import 'package:flutter/material.dart';
import 'package:uzum_bank/features/auth/presentation/pages/enter_password/enter_password.dart';
import 'package:uzum_bank/features/auth/presentation/pages/enter_phone_number/enter_phone_number.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      initialRoute: 'enter_password',
      routes: {'enter_password': (context) => const EnterPhoneNumberScreen()},
    );
  }
}
