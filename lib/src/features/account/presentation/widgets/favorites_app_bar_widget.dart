import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:icons_plus/icons_plus.dart';
import 'package:mobile_ec/src/core/themes/app_colors.dart';
import 'package:mobile_ec/src/core/themes/app_modal_style.dart';
import 'package:mobile_ec/src/core/themes/app_text_styles.dart';
import 'package:mobile_ec/src/core/widgets/app_bar_widget.dart';

class FavoritesAppBar extends StatelessWidget {
  const FavoritesAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBarWidget(
      title: Text(
        'Favorites',
        style: AppTextStyles.font16BoldBlack,
      ),
      automaticallyImplyLeading: true,
      actions: <Widget>[
        IconButton(
          icon: Icon(
            Bootstrap.three_dots_vertical,
            size: 18.sp,
            color: AppColors.black,
          ),
          tooltip: 'More Icon',
          onPressed: () {
            AppModalStyle.menu(
              context,
              const [
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
    );
  }
}
