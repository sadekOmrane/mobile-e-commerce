// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:icons_plus/icons_plus.dart';
import 'package:mobile_ec/src/core/themes/app_colors.dart';

class AppBarWidget extends StatefulWidget {
  Widget title;
  Widget? leading;
  List<Widget>? actions;
  bool automaticallyImplyLeading;
  AppBarWidget({
    Key? key,
    required this.title,
    this.leading,
    this.actions,
    required this.automaticallyImplyLeading,
  }) : super(key: key);

  @override
  State<AppBarWidget> createState() => _AppBarWidgetState();
}

class _AppBarWidgetState extends State<AppBarWidget> {
  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      snap: false,
      pinned: false,
      floating: true,
      backgroundColor: AppColors.trWhite,
      foregroundColor: AppColors.grey,
      shadowColor: AppColors.shGrey,
      automaticallyImplyLeading: widget.automaticallyImplyLeading,
      toolbarHeight: 60.h,
      leading: widget.automaticallyImplyLeading
          ? IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: Icon(
                Bootstrap.arrow_left,
                size: 18.sp,
                color: AppColors.black,
              ),
            )
          : widget.leading,
      leadingWidth: widget.automaticallyImplyLeading ? 45.w : 60.w,
      titleSpacing: widget.leading != null ? 0 : 12.w,
      title: widget.title,
      actions: widget.actions,
    );
  }
}
