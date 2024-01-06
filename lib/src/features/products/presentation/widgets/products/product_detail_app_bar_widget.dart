// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:card_swiper/card_swiper.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:icons_plus/icons_plus.dart';
import 'package:mobile_ec/src/base_screen.dart';
import 'package:mobile_ec/src/core/themes/app_colors.dart';

class ProductDetailAppBarWidget extends StatefulWidget {
  List<String> productImages;
  ProductDetailAppBarWidget({
    Key? key,
    required this.productImages,
  }) : super(key: key);

  @override
  State<ProductDetailAppBarWidget> createState() =>
      _ProductDetailAppBarWidgetState();
}

class _ProductDetailAppBarWidgetState extends State<ProductDetailAppBarWidget> {
  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      backgroundColor: Colors.white,
      shadowColor: Colors.transparent,
      leading: IconButton(
        onPressed: () {
          Navigator.pop(context);
        },
        icon: Icon(
          Bootstrap.arrow_left,
          color: AppColors.grey,
          size: 20.sp,
        ),
      ),
      expandedHeight: MediaQuery.of(context).size.height / 1.5,
      floating: true,
      pinned: true,
      snap: true,
      flexibleSpace: FlexibleSpaceBar(
        background: Swiper(
          itemBuilder: (BuildContext context, int index) {
            return Image.network(
              widget.productImages[index],
              fit: BoxFit.fill,
            );
          },
          itemCount: widget.productImages.length,
          pagination: SwiperPagination(),
          loop: true,
          autoplay: true,
        ),
      ),
    );
  }
}
