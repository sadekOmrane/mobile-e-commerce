import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:icons_plus/icons_plus.dart';
import 'package:mobile_ec/src/core/routes/app_routes.dart';
import 'package:mobile_ec/src/core/themes/app_button_style.dart';
import 'package:mobile_ec/src/core/themes/app_colors.dart';
import 'package:mobile_ec/src/core/themes/app_text_styles.dart';
import 'package:mobile_ec/src/features/cart/presentation/blocs/remote/cart_remote_bloc.dart';
import 'package:mobile_ec/src/features/products/domain/entities/product_entity.dart';

class FavoriteProductCard extends StatefulWidget {
  final ProductEntity product;
  const FavoriteProductCard({super.key, required this.product});

  @override
  State<FavoriteProductCard> createState() => _FavoriteProductCardState();
}

class _FavoriteProductCardState extends State<FavoriteProductCard> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.pushNamed(context, AppRoutes.APP_PRODUCT_DETAILS_SCREEN,
            arguments: widget.product);
      },
      child: Container(
        margin: const EdgeInsets.all(10),
        decoration: BoxDecoration(
          color: Colors.white,
          border: Border.all(color: AppColors.brGrey),
          borderRadius: BorderRadius.circular(18.sp),
          boxShadow: const [
            BoxShadow(
              color: AppColors.shGrey,
              offset: Offset(0, 1),
              blurRadius: 2,
            ),
          ],
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Expanded(
              child: Container(
                margin: EdgeInsets.only(top: 5.sp, left: 5.sp, right: 5.sp),
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: NetworkImage(widget.product.mainPhoto!),
                    fit: BoxFit.fill,
                  ),
                  borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(10),
                    topRight: Radius.circular(10),
                  ),
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 8),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        '${widget.product.name!.substring(0, 7)}..',
                        style: AppTextStyles.font14BoldBlack,
                      ),
                      widget.product.starsAvg != null
                          ? Row(
                              children: [
                                Text(
                                  '${widget.product.starsAvg.toString()}/5 (${widget.product.starsCount.toString()})',
                                  style: AppTextStyles.font14RegularGrey,
                                ),
                                SizedBox(width: 5.sp),
                                Icon(
                                  Bootstrap.star_fill,
                                  size: 14.sp,
                                  color: AppColors.amber,
                                ),
                              ],
                            )
                          : SizedBox()
                    ],
                  ),
                  SizedBox(height: 3.sp),
                  widget.product.isDiscounted!
                      ? Text(
                          '${widget.product.initPrice.toString()}TND',
                          style: AppTextStyles.font14RegularGrey,
                        )
                      : Text(
                          '${widget.product.initPrice.toString()}TND',
                          style: AppTextStyles.font14RegularGrey,
                        ),
                  SizedBox(height: 3.sp),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        '${widget.product.finalPrice.toString()}TND',
                        style: AppTextStyles.font14RegularGrey,
                      ),
                      Text(
                        '${widget.product.discountValue.toString()}%',
                        style: AppTextStyles.font14RegularGrey.copyWith(
                          color: AppColors.amber,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 3.sp),
                  ElevatedButton(
                    style: AppButtonStyle.roundedButtonStyle,
                    onPressed: () {
                      BlocProvider.of<CartRemoteBloc>(context).add(
                        CartRemoteAddItemEvent(
                          productUuid: widget.product.uuid!,
                          quantity: 1,
                        ),
                      );
                    },
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Bootstrap.cart3,
                          size: 18.sp,
                        ),
                        SizedBox(width: 8.sp),
                        const Text('Add to cart'),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
