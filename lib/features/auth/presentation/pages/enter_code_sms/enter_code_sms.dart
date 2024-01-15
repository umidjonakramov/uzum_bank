import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class EnterCodeSmsScreen extends StatefulWidget {
  const EnterCodeSmsScreen({super.key});

  @override
  State<EnterCodeSmsScreen> createState() => _EnterCodeSmsScreenState();
}

class _EnterCodeSmsScreenState extends State<EnterCodeSmsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Icon(
          Icons.arrow_back_ios,
          size: 28,
          color: Colors.black87,
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16,vertical: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Введите код из смс',
              style: TextStyle(fontSize: 28, fontWeight: FontWeight.w700),
            ),
            SizedBox(height: 15),
            Text(
              'Мы отправили смс на номер +998 (90) xxx-xx-56',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w400
              ),
            ),
            SizedBox(height: 36,),
            Text('Код из смс',style: TextStyle(
              fontSize: 15,
              fontWeight: FontWeight.w800
            ),),
            SizedBox(height: 5),
            Container(
              child: TextField(
                decoration: new InputDecoration(
                    disabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                      borderSide: BorderSide(
                          width: 2,
                          style: BorderStyle.solid,
                          color: Colors.purpleAccent),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                      borderSide: BorderSide(
                          width: 2,
                          style: BorderStyle.solid,
                          color: Colors.deepPurpleAccent),
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                      borderSide: BorderSide(
                          width: 2,
                          style: BorderStyle.solid,
                          color: Colors.deepPurple),
                    ),
                    hintText: '5 цифр',
                    hintStyle: TextStyle(
                      fontSize: 18,
                      color: Colors.black54
                    ),
                    suffixStyle: const TextStyle(color: Colors.green)),
                cursorWidth: 3,
              ),
            ),
            SizedBox(height: 40),
            Text('Отправить код ещё раз',style: TextStyle(
              fontSize: 18,
              color: Colors.deepPurple
            ),)
          ],
        ),
      ),
    );
  }
}
