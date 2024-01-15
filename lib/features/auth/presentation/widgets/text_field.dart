import 'package:flutter/material.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';
import 'package:uzum_bank/core/app_colors/app_colors.dart';

class CustomTextField extends StatelessWidget {

  MaskTextInputFormatter maskFormatter;
  TextEditingController phoneNumberController;

  CustomTextField({
    required this.maskFormatter,
    required this.phoneNumberController,
    Key? key,
  }) : super(key: key);



  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: phoneNumberController,
      keyboardType: TextInputType.number,
      cursorColor: Colors.black,
      decoration: InputDecoration(
        filled: true,
        fillColor: Colors.white,

        border: const OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(10)), borderSide: BorderSide(color: Colors.grey)),
        prefixIcon: SizedBox(
          width: 100,
          child: Row(
            children: [
              const SizedBox(width: 10,),
              Image.asset('assets/flag/flag_uzbekistan.png',width: 25,height: 25,),
              const SizedBox(width: 5,),
              const Text('+998 | ')
            ],
          ),
        ),
        hintText: '(00) 000-00-00',

      ),
      inputFormatters: [maskFormatter],
    );
  }
}
