import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mobile_ec/src/core/themes/app_colors.dart';

class AppButtonStyle {
  static ButtonStyle simpleButtonStyle = ElevatedButton.styleFrom(
    backgroundColor: AppColors.bgGrey,
    shadowColor: Colors.transparent,
    foregroundColor: AppColors.grey,
    shape: RoundedRectangleBorder(
      side: const BorderSide(
        color: AppColors.brGrey,
      ),
      borderRadius: BorderRadius.circular(10.sp),
    ),
  );

  static ButtonStyle roundedButtonStyle = ElevatedButton.styleFrom(
    backgroundColor: AppColors.bgGrey,
    shadowColor: Colors.transparent,
    foregroundColor: AppColors.grey,
    shape: RoundedRectangleBorder(
      side: const BorderSide(
        color: AppColors.brGrey,
      ),
      borderRadius: BorderRadius.circular(18.sp),
    ),
  );

  static ButtonStyle primaryButtonStyle = ElevatedButton.styleFrom(
    backgroundColor: AppColors.bgGrey,
    shadowColor: Colors.transparent,
    shape: RoundedRectangleBorder(
      side: const BorderSide(
        color: AppColors.amber,
      ),
      borderRadius: BorderRadius.circular(28.sp),
    ),
  );
}
