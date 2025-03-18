import 'package:e_store/utils/constants/colors.dart';
import 'package:flutter/material.dart';

class TShadowStyle {
  static final verticalProductShadow = BoxShadow(
    color: TColors.grey.withOpacity(0.25),
    offset: const Offset(0, 4),
    blurRadius: 12,
    spreadRadius: 0,
  );
  static final horizontalProductShadow = BoxShadow(
      color: TColors.darkGrey,
      offset: const Offset(0, 2),
      blurRadius: 50,
      spreadRadius: 7);
}
