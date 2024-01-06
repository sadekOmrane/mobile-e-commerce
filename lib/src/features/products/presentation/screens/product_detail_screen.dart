// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:icons_plus/icons_plus.dart';
import 'package:mobile_ec/src/core/themes/app_button_style.dart';
import 'package:mobile_ec/src/core/themes/app_colors.dart';
import 'package:mobile_ec/src/core/themes/app_text_styles.dart';
import 'package:mobile_ec/src/features/cart/presentation/blocs/remote/cart_remote_bloc.dart';
import 'package:mobile_ec/src/features/products/domain/entities/product_entity.dart';
import 'package:mobile_ec/src/features/products/presentation/widgets/products/product_detail_app_bar_widget.dart';
import 'package:mobile_ec/src/features/products/presentation/widgets/products/product_detail_info_widget.dart';

class ProductDetailScreen extends StatefulWidget {
  ProductEntity product;
  ProductDetailScreen({
    Key? key,
    required this.product,
  }) : super(key: key);

  @override
  State<ProductDetailScreen> createState() => _ProductDetailScreenState();
}

class _ProductDetailScreenState extends State<ProductDetailScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: CustomScrollView(
          slivers: <Widget>[
            ProductDetailAppBarWidget(
              productImages: [
                widget.product.mainPhoto.toString(),
                widget.product.mainPhoto.toString(),
                widget.product.mainPhoto.toString(),
              ],
            ),
            ProductDetailInfoWidget(
              product: widget.product,
            )
          ],
        ),
        bottomNavigationBar: BottomAppBar(
          color: Colors.transparent,
          shadowColor: Colors.transparent,
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.sp, vertical: 10.sp),
            child: Row(
              children: [
                Expanded(
                  child: ElevatedButton(
                    onPressed: () {
                      BlocProvider.of<CartRemoteBloc>(context).add(
                        CartRemoteAddItemEvent(
                          productUuid: widget.product.uuid!,
                          quantity: 1,
                        ),
                      );
                    },
                    style: AppButtonStyle.primaryButtonStyle.copyWith(
                      padding: MaterialStateProperty.all<EdgeInsets>(
                          EdgeInsets.symmetric(vertical: 8.sp)),
                      backgroundColor:
                          MaterialStateProperty.all<Color>(AppColors.amber),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Bootstrap.bag,
                          size: 20.sp,
                          color: Colors.white,
                        ),
                        SizedBox(
                          width: 10.sp,
                        ),
                        Text(
                          "Add to cart",
                          style: AppTextStyles.font14RegularWhite,
                        ),
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
        ));
  }
}
