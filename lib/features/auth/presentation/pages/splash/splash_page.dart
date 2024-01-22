import 'package:flutter/material.dart';
import 'package:uzum_bank/features/auth/presentation/pages/enter_phone_number/enter_phone_number.dart';
import 'package:uzum_bank/features/main/presentation/page/dashboard/dashboard.dart';

class SplashPage extends StatefulWidget {
  // const SplashPage({required Key key}) : super(key: key);

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _animation;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(vsync: this, duration: Duration(seconds: 2));
    _animation = Tween(begin: 0.0, end: 1.0).animate(_controller);

    _controller.addStatusListener((status) {
      if (status == AnimationStatus.completed) {
        Navigator.of(context).pushReplacement(
          MaterialPageRoute(builder: (context) => DashboardPage()),
        );
      }
    });

    // Start the animation after a delay
    Future.delayed(const Duration(seconds: 2), () {
      _controller.forward();
    });
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: FadeTransition(
          opacity: _animation,
          child: Image.asset('assets/logo/uzum_bank_icon.png'),
        ),
      ),
    );
  }
}
