import 'package:carousel_slider/carousel_slider.dart';
import 'package:e_store/common/widgets/custom_shapes/containers/circular_container.dart';
import 'package:e_store/common/widgets/custom_shapes/containers/primary_header_container.dart';
import 'package:e_store/common/widgets/images/t_rounded_image.dart';
import 'package:e_store/common/widgets/layouts/grid_layout.dart';
import 'package:e_store/common/widgets/products/product_cards/product_card_vertical.dart';
import 'package:e_store/common/widgets/search_bar/search_bar.dart';
import 'package:e_store/common/widgets/texts/section_heading.dart';
import 'package:e_store/features/shop/screens/home/widgets/home_appbar.dart';
import 'package:e_store/features/shop/screens/home/widgets/home_categories.dart';
import 'package:e_store/features/shop/screens/home/widgets/promo_slider.dart';
import 'package:e_store/utils/constants/colors.dart';
import 'package:e_store/utils/constants/image_strings.dart';
import 'package:e_store/utils/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            TPrimaryHeaderContainer(
              child: Column(
                children: [
                  // ---AppBar---
                  const THomeAppBar(),
                  const SizedBox(
                    height: TSizes.spaceBtwSections,
                  ),
                  //  ---SearchBar---
                  TSearchContainer(
                    text: "Search in Store",
                    icon: Iconsax.search_normal,
                    onTap: () {},
                  ),
                  //  ---Categories---
                  const SizedBox(
                    height: TSizes.spaceBtwSections,
                  ),
                  const Padding(
                    padding: const EdgeInsets.only(left: TSizes.defaultSpace),
                    child: Column(
                      children: [
                        //---Heading---
                        const TSectionHeading(
                          title: "Popular Categories",
                          textColor: TColors.white,
                        ),
                        const SizedBox(
                          height: TSizes.defaultSpace,
                        ),
                        // ---Categories---
                        THomeCategories(),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            // ---Body---
            Padding(
              padding: EdgeInsets.all(TSizes.defaultSpace),
              child: Column(
                children: [
                  const TPromoSlider(
                    banners: [
                      TImages.promoBanner1,
                      TImages.promoBanner2,
                      TImages.promoBanner3
                    ],
                  ),
                  const SizedBox(
                    height: TSizes.spaceBtwSections,
                  ),
                  // Popular Products
                  TGridLayout(
                    itemCount: 2,
                    itemBuilder: (_, index) => const TProductCardVertical(),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
