import 'package:flutter/material.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';
import 'package:uzum_bank/core/app_colors/app_colors.dart';
import 'package:uzum_bank/features/auth/presentation/widgets/custom_button.dart';
import 'package:uzum_bank/features/auth/presentation/widgets/text_field.dart';

class EnterPhoneNumberScreen extends StatefulWidget {
  const EnterPhoneNumberScreen({super.key});

  @override
  State<EnterPhoneNumberScreen> createState() => _EnterPhoneNumberScreenState();
}

class _EnterPhoneNumberScreenState extends State<EnterPhoneNumberScreen> {
  final mask =  MaskTextInputFormatter(mask: '(##) ###-##-##', filter: { "#": RegExp(r'[0-9]') },
  type: MaskAutoCompletionType.lazy);
  var phoneNumberController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgroundColor,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
          child: Column(
            children: [
              Row(
                children: [
                  const Spacer(),
                  InkWell(
                    onTap: (){
        
                    },
                    child: Row(
                      children: [
                        Image.asset('assets/icons/ic_bank_contacts.png', color: AppColors.primary, width: 20, height: 20,),
                        Text(' Connection with bank', style: TextStyle(color: AppColors.primary, fontSize: 12, fontWeight: FontWeight.w600),),
                      ],
                    ),
                  )
                ],
              ),
              const SizedBox(height: 20,),
              const Row(
                children: [
                  Text('Enter your number', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),),
                  Spacer()
                ],
              ),
              const SizedBox(height: 15,),
              CustomTextField(maskFormatter: mask, phoneNumberController: phoneNumberController,),
              const Spacer(),
              CustomButton('Continue')
        
            ],
          ),
        ),
      ),
    );
  }
}
