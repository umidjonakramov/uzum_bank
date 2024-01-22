import 'package:flutter/material.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:uzum_bank/features/auth/presentation/pages/splash/splash_page.dart';
import 'package:uzum_bank/features/main/presentation/page/dashboard/dashboard.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Uzum Bank',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      initialRoute: 'splash',
      routes: {
        'splash': (context) =>  SplashPage(),
        'dashboard' : (context) => DashboardPage(),
      },
    );
  }
}
