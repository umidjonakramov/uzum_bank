import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:uzum_bank/features/auth/presentation/widgets/colors.dart';

class EnterPasswordScreen extends StatefulWidget {
  const EnterPasswordScreen({super.key});

  @override
  State<EnterPasswordScreen> createState() => _EnterPasswordScreenState();
}

class _EnterPasswordScreenState extends State<EnterPasswordScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: EdgeInsets.symmetric(horizontal: 16),
        child: Column(children: [
          Icon(Icons.chevron_left),
          Container(
              margin: EdgeInsets.only(top: 24),
              child: Text(
                'Welcom',
                style: TextStyle(fontSize: 24),
              )),
          Container(
            child: Text('Enter password'),
            margin: EdgeInsets.only(top: 24),
          ),
          Container(
              child: TextField(
            decoration: InputDecoration(
              hintText: '******',
              suffixIcon: Icon(
                Icons.remove_red_eye,
                color: purple,
              ),
            ),
          )),
          Container(
            child: Text(
              'Forgot Paswword',
              style: TextStyle(color: purple),
            ),
          )
        ]),
      ),
    );
  }
}
