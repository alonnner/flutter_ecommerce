import 'package:e_store/features/authentication/screens/signup/verify_email.dart';
import 'package:e_store/utils/constants/text_strings.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class TSignupButton extends StatelessWidget {
  const TSignupButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: ElevatedButton(
          onPressed: () {
            Get.to(() => const VerifyEmailScreen());
          },
          child: const Text(TTexts.createAccount)),
    );
  }
}
