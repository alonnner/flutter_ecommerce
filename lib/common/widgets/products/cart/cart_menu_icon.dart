import 'package:e_store/utils/constants/colors.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class TCounterIcon extends StatelessWidget {
  const TCounterIcon({
    super.key,
    required this.iconColor,
    required this.onPressed,
  });

  final Color iconColor;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        IconButton(
          onPressed: onPressed,
          icon: const Icon(Iconsax.shopping_bag),
          color: iconColor,
        ),
        Positioned(
            right: 2,
            child: Container(
              width: 18,
              height: 18,
              decoration: BoxDecoration(
                color: TColors.black.withOpacity(0.8),
                borderRadius: BorderRadius.circular(18),
              ),
              child: Center(
                child: Text(
                  "2",
                  style: Theme.of(context)
                      .textTheme
                      .labelLarge!
                      .apply(color: TColors.white, fontSizeFactor: 0.8),
                ),
              ),
            ))
      ],
    );
  }
}
