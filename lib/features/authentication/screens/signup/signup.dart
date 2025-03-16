import 'package:e_store/common/widgets/login_signup/form_divider.dart';
import 'package:e_store/common/widgets/login_signup/social_buttons.dart';
import 'package:e_store/features/authentication/screens/signup/widget/signup_form.dart';
import 'package:e_store/features/authentication/screens/signup/widget/signup_header.dart';
import 'package:e_store/features/authentication/screens/signup/widget/signup_to.dart';
import 'package:e_store/features/authentication/screens/signup/widget/signup_terms.dart';
import 'package:e_store/utils/constants/sizes.dart';
import 'package:e_store/utils/constants/text_strings.dart';
import 'package:e_store/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SignupScreen extends StatelessWidget {
  const SignupScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(TSizes.defaultSpace),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              //Title
              const TSignupHeader(),
              const SizedBox(
                height: TSizes.spaceBtwSections,
              ),

              //Form
              const TSignupForm(),
              const SizedBox(
                height: TSizes.spaceBtwSections,
              ),

              //Terms&Conditions CheckBox
              TTermsAndConditionsCheckBox(dark: dark),
              const SizedBox(
                height: TSizes.spaceBtwSections,
              ),

              //Sign Up Button
              const TSignupButton(),
              const SizedBox(
                height: TSizes.spaceBtwSections,
              ),
              TFormDivider(
                dark: dark,
                dividerText: TTexts.orSignUpWith.capitalize!,
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
