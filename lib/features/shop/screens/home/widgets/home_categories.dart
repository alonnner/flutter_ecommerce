import 'package:e_store/common/widgets/image_text/vertical_image_text.dart';
import 'package:e_store/utils/constants/image_strings.dart';
import 'package:flutter/material.dart';

class THomeCategories extends StatelessWidget {
  const THomeCategories({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: 6,
        itemBuilder: (context, index) {
          return TVerticalImageText(
            title: 'Popular Categories',
            image: TImages.shoeIcon,
            onTap: () {},
          );
        },
      ),
    );
  }
}
