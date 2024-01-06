// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:icons_plus/icons_plus.dart';
import 'package:mobile_ec/src/core/themes/app_colors.dart';
import 'package:mobile_ec/src/core/themes/app_global_style.dart';
import 'package:mobile_ec/src/core/themes/app_text_styles.dart';

import 'package:mobile_ec/src/features/products/domain/entities/product_entity.dart';

class ProductDetailInfoWidget extends StatefulWidget {
  ProductEntity product;

  ProductDetailInfoWidget({
    Key? key,
    required this.product,
  }) : super(key: key);

  @override
  State<ProductDetailInfoWidget> createState() =>
      _ProductDetailInfoWidgetState();
}

class _ProductDetailInfoWidgetState extends State<ProductDetailInfoWidget> {
  int qty = 1;

  changeQty(bool incre) {
    setState(() {
      if (incre) {
        qty++;
      } else if (qty > 1) {
        qty--;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return SliverPadding(
      padding: EdgeInsets.symmetric(vertical: 30.sp, horizontal: 20.sp),
      sliver: SliverToBoxAdapter(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  child: Text(
                    widget.product.name.toString(),
                    style: AppTextStyles.font20BoldBlack,
                  ),
                ),
                IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Bootstrap.heart,
                    size: 20.sp,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 10.h,
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  child: Text(
                    widget.product.stockStatus.toString(),
                    style: AppTextStyles.font14RegularGrey,
                  ),
                ),
                widget.product.starsAvg != null
                    ? Text(
                        '${widget.product.starsAvg.toString()}/5',
                        style: AppTextStyles.font14RegularGrey,
                      )
                    : SizedBox(),
                SizedBox(
                  width: 10.sp,
                ),
                widget.product.starsAvg != null
                    ? Icon(
                        Bootstrap.star_half,
                        size: 20.sp,
                        color: AppColors.amber,
                      )
                    : Icon(
                        Bootstrap.star,
                        size: 20.sp,
                        color: AppColors.grey,
                      ),
                SizedBox(
                  width: 10.sp,
                ),
                Text(
                  '(${widget.product.starsCount.toString()} reviews)',
                  style: AppTextStyles.font14RegularGrey,
                ),
              ],
            ),
            SizedBox(
              height: 20.h,
            ),
            const Divider(
              color: AppColors.brGrey,
              height: 1,
            ),
            SizedBox(
              height: 20.h,
            ),
            Text(
              'Description',
              style: AppTextStyles.font16BoldBlack,
            ),
            SizedBox(
              height: 10.h,
            ),
            Text(
              'lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec',
              style: AppTextStyles.font14RegularGrey,
            ),
            SizedBox(
              height: 10.h,
            ),
            Text(
              'Marque',
              style: AppTextStyles.font16BoldBlack,
            ),
            SizedBox(
              height: 10.h,
            ),
            Text(
              widget.product.marque.toString(),
              style: AppTextStyles.font14RegularGrey,
            ),
            SizedBox(
              height: 10.h,
            ),
            Row(
              children: [
                Text(
                  'Color',
                  style: AppTextStyles.font16BoldBlack,
                ),
                SizedBox(
                  width: 10.sp,
                ),
                Container(
                  height: 35.h,
                  decoration: AppGlobalStyle.simpleBottunDecoration,
                  child: Row(
                    children: [
                      IconButton(
                        onPressed: () {
                          changeQty(false);
                        },
                        icon: Icon(
                          Bootstrap.dash,
                          size: 18.sp,
                        ),
                      ),
                      Text(qty.toString(),
                          style: AppTextStyles.font14RegularGrey),
                      IconButton(
                        onPressed: () {
                          changeQty(true);
                        },
                        icon: Icon(
                          Bootstrap.plus,
                          size: 18.sp,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
