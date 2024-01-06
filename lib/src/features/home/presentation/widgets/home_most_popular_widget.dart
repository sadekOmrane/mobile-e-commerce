import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mobile_ec/src/core/themes/app_text_styles.dart';
import 'package:mobile_ec/src/features/products/domain/entities/product_entity.dart';
import 'package:mobile_ec/src/features/products/presentation/widgets/products/product_card_widget.dart';

class HomeMostPopularWidget extends StatelessWidget {
  HomeMostPopularWidget({super.key});

  ProductEntity p = ProductEntity(
    uuid: '1',
    name: 'Product 1',
    discountValue: 16,
    finalPrice: 299,
    mainPhoto:
        'https://w7.pngwing.com/pngs/60/414/png-transparent-iphone-14-thumbnail.png',
    isActivated: true,
    marque: 'Marque 1',
    starsAvg: 4,
    initPrice: 399,
    isDiscounted: true,
    isSponsored: true,
    quantity: 100,
    starsCount: 50,
    stockStatus: 'In Stock',
  );

  @override
  Widget build(BuildContext context) {
    return SliverGrid.builder(
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        childAspectRatio: 0.55,
      ),
      itemBuilder: (context, index) {
        return ProductCardWidget(
          product: p,
        );
      },
      itemCount: 6,
    );
  }
}
