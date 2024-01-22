import 'package:flutter/material.dart';
import 'package:uzum_bank/core/app_colors/app_colors.dart';

class CustomButton extends StatelessWidget {
  String text;


  CustomButton(this.text, {super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      width: MediaQuery.of(context).size.width,
      decoration: ShapeDecoration(
          color: AppColors.buttonColor,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(10))),
      child: InkWell(
          onTap: () {},
          child: Center(
            child: Text(
              textAlign: TextAlign.center,
              text,
              style: TextStyle(color: AppColors.primary),
            ),
          )),
    );
  }
}
