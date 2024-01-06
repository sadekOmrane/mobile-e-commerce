import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:icons_plus/icons_plus.dart';
import 'package:mobile_ec/src/core/themes/app_colors.dart';
import 'package:mobile_ec/src/core/themes/app_modal_style.dart';
import 'package:mobile_ec/src/core/themes/app_text_styles.dart';
import 'package:mobile_ec/src/core/widgets/app_bar_widget.dart';

class CartAppBarWidget extends StatefulWidget {
  const CartAppBarWidget({super.key});

  @override
  State<CartAppBarWidget> createState() => _CartAppBarWidgetState();
}

class _CartAppBarWidgetState extends State<CartAppBarWidget> {
  @override
  Widget build(BuildContext context) {
    return AppBarWidget(
      title: Text(
        'Shopping Cart',
        style: AppTextStyles.font16BoldBlack,
      ),
      automaticallyImplyLeading: false,
      actions: [
        IconButton(
          icon: Icon(
            Bootstrap.three_dots_vertical,
            size: 18.sp,
            color: AppColors.black,
          ),
          tooltip: 'More Icon',
          onPressed: () {
            AppModalStyle.menu(context, const [
              PopupMenuItem(
                child: Text('Menu item 1'),
              ),
              PopupMenuItem(
                child: Text('Menu item 2'),
              ),
              PopupMenuItem(
                child: Text('Menu item 3'),
              ),
            ]);
          },
        ),
      ],
    ) /*SliverAppBar(
      snap: false,
      pinned: false,
      floating: true,
      automaticallyImplyLeading: false,
      backgroundColor: Colors.white,
      foregroundColor: AppColors.grey,
      shadowColor: Colors.transparent,
      toolbarHeight: 60.h,
      shape: RoundedRectangleBorder(
        side: const BorderSide(
          color: AppColors.brGrey,
        ),
        borderRadius: BorderRadius.vertical(
          bottom: Radius.circular(20.sp),
        ),
      ),
      title: Text(
        'Shopping Cart',
        style: AppTextStyles.font16BoldBlack,
      ),
      actions: <Widget>[
        IconButton(
          icon: Icon(
            Bootstrap.three_dots_vertical,
            size: 18.sp,
          ),
          tooltip: 'More Icon',
          onPressed: () {
            showMenu(
              shape: RoundedRectangleBorder(
                side: const BorderSide(
                  color: AppColors.brGrey,
                ),
                borderRadius: BorderRadius.circular(15.sp),
              ),
              context: context,
              position: RelativeRect.fromLTRB(100, 100, 0, 100),
              shadowColor: AppColors.shGrey,
              items: [
                PopupMenuItem(
                  child: Text('Menu item 1'),
                ),
                PopupMenuItem(
                  child: Text('Menu item 2'),
                ),
                PopupMenuItem(
                  child: Text('Menu item 3'),
                ),
              ],
            );
          },
        ),
      ],
    )*/
        ;
  }
}
