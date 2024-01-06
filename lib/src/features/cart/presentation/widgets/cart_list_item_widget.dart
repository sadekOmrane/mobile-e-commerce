import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:icons_plus/icons_plus.dart';
import 'package:mobile_ec/src/core/themes/app_colors.dart';
import 'package:mobile_ec/src/core/themes/app_global_style.dart';
import 'package:mobile_ec/src/core/themes/app_text_styles.dart';
import 'package:mobile_ec/src/features/cart/presentation/blocs/remote/cart_remote_bloc.dart';
import 'package:mobile_ec/src/features/products/domain/entities/product_entity.dart';

class CartListItemWidget extends StatefulWidget {
  ProductEntity product;
  CartListItemWidget({super.key, required this.product});

  @override
  State<CartListItemWidget> createState() => _CartListItemWidgetState();
}

class _CartListItemWidgetState extends State<CartListItemWidget> {
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
    return Container(
      margin: EdgeInsets.only(bottom: 12.sp),
      padding: EdgeInsets.all(12.sp),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.grey.shade300),
        borderRadius: BorderRadius.circular(18.sp),
      ),
      child: _buildProductInfo(),
    );
  }

  Widget _buildProductInfo() {
    return Row(
      children: [
        Container(
          width: 100.w,
          height: 100.h,
          padding: EdgeInsets.all(10.sp),
          decoration: BoxDecoration(
            color: AppColors.bgGrey,
            borderRadius: BorderRadius.circular(18.sp),
          ),
          child: Image.network(
            widget.product.mainPhoto.toString(),
            fit: BoxFit.cover,
          ),
        ),
        SizedBox(
          width: 10.w,
        ),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 30.h,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      '${widget.product.name.toString().substring(0, 14)}..',
                      style: AppTextStyles.font14BoldBlack,
                    ),
                    BlocListener<CartRemoteBloc, CartRemoteState>(
                      listener: (context, state) {
                        if (state is CartRemoteRemoveItemLoaded) {
                          BlocProvider.of<CartRemoteBloc>(context)
                              .add(CartRemoteGetItemsEvent());
                        }
                      },
                      child: IconButton(
                        onPressed: () {
                          BlocProvider.of<CartRemoteBloc>(context).add(
                              CartRemoteRemoveItemEvent(
                                  productUuid: widget.product.uuid.toString()));
                        },
                        icon: Icon(
                          Bootstrap.trash,
                          size: 18.sp,
                          color: AppColors.red,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 30.h,
                child: Row(
                  children: [
                    Text(
                      'Size: 128GB',
                      style: AppTextStyles.font14RegularGrey,
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 30.h,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      '685TND',
                      style: AppTextStyles.font14BoldBlack,
                    ),
                    Container(
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
              ),
            ],
          ),
        ),
      ],
    );
  }
}
