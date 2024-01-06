import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mobile_ec/src/core/themes/app_colors.dart';

class AppModalStyle {
  static bottomModalSheetStyle(
      BuildContext context, Widget Function(BuildContext) builder) {
    showModalBottomSheet(
      isScrollControlled: true,
      showDragHandle: true,
      clipBehavior: Clip.hardEdge,
      shape: RoundedRectangleBorder(
        side: const BorderSide(color: AppColors.brGrey),
        borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20.sp), topRight: Radius.circular(20.sp)),
      ),
      context: context,
      builder: builder,
    );
  }

  static menu(BuildContext context, List<PopupMenuEntry<dynamic>> items) {
    showMenu(
      shape: RoundedRectangleBorder(
        side: const BorderSide(
          color: AppColors.brGrey,
        ),
        borderRadius: BorderRadius.circular(15.sp),
      ),
      context: context,
      position: RelativeRect.fromLTRB(100.sp, 100.sp, 0, 100.sp),
      shadowColor: AppColors.shGrey,
      items: items,
    );
  }
}
