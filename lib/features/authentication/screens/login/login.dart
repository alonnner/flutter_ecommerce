import 'package:e_store/common/styles/spacing_styles.dart';
import 'package:e_store/common/widgets/login_signup/form_divider.dart';
import 'package:e_store/common/widgets/login_signup/social_buttons.dart';
import 'package:e_store/features/authentication/screens/login/widgets/login_form.dart';
import 'package:e_store/features/authentication/screens/login/widgets/login_header.dart';
import 'package:e_store/utils/constants/sizes.dart';
import 'package:e_store/utils/constants/text_strings.dart';
import 'package:e_store/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    bool isChecked = true;

    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: TSpacingStyle.paddingWithAppBarHeight,
          child: Column(
            children: [
              // Logo, Title & Sub-Title
              TLoginHeader(dark: dark),

              //Form
              TLoginForm(isChecked: isChecked),

              //Divider
              TFormDivider(
                dark: dark,
                dividerText: TTexts.orSignInWith.capitalize!,
              ),

              const SizedBox(height: TSizes.spaceBtwItems),
              //Footer
              const TSocialButtons(),
            ],
          ),
        ),
      ),
    );
  }
}
