import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:icons_plus/icons_plus.dart';
import 'package:mobile_ec/src/core/themes/app_colors.dart';

// ignore: must_be_immutable
class SimpleAppBarWidget extends StatelessWidget
    implements PreferredSizeWidget {
  Widget? leading;
  Widget? title;
  String? path;
  List<Widget>? actions;
  SimpleAppBarWidget(
      {super.key, this.leading, this.title, this.actions, this.path});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      toolbarHeight: preferredSize.height,
      backgroundColor: Colors.transparent,
      shadowColor: Colors.transparent,
      foregroundColor: AppColors.black,
      leading: leading ??
          IconButton(
            onPressed: () {
              path != null
                  ? Navigator.pushNamed(context, path!)
                  : Navigator.pop(context);
            },
            icon: Icon(
              Bootstrap.arrow_left,
              size: 20.sp,
            ),
          ),
      title: title,
      actions: actions,
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(60.h);
}
