import 'package:e_store/utils/constants/text_strings.dart';
import 'package:flutter/material.dart';

class TSignupHeader extends StatelessWidget {
  const TSignupHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      TTexts.signupTitle,
      style: Theme.of(context).textTheme.headlineMedium,
    );
  }
}
