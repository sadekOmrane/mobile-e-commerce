import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mobile_ec/src/core/themes/app_colors.dart';

class AppGlobalStyle {
  static BoxDecoration simpleBottunDecoration = BoxDecoration(
    color: AppColors.bgGrey,
    border: Border.all(color: AppColors.brGrey),
    borderRadius: BorderRadius.circular(18.sp),
  );
}
