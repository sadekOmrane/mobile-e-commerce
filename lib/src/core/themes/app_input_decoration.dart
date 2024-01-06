import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:icons_plus/icons_plus.dart';
import 'package:mobile_ec/src/core/themes/app_colors.dart';
import 'package:mobile_ec/src/core/themes/app_text_styles.dart';

class AppInputDecoration {
  static InputDecoration inputDecoration(
      [String? label, String? hint, Widget? prefixIcon, Widget? suffixIcon]) {
    return InputDecoration(
      label: Text(
        label ?? '',
        style: AppTextStyles.font14RegularGrey,
      ),
      hintText: hint,
      contentPadding: EdgeInsets.symmetric(
        horizontal: 16.sp,
        vertical: 12.sp,
      ),
      fillColor: AppColors.bgGrey,
      filled: true,
      focusedBorder: OutlineInputBorder(
        borderSide: BorderSide(color: AppColors.brBlack),
        borderRadius: BorderRadius.circular(8.sp),
      ),
      enabledBorder: OutlineInputBorder(
        borderSide: BorderSide(color: AppColors.brGrey),
        borderRadius: BorderRadius.circular(8.sp),
      ),
      prefixIcon: prefixIcon,
      prefixIconColor: AppColors.grey,
      suffixIcon: suffixIcon,
      suffixIconColor: AppColors.grey,
    );
  }

  static InputDecoration searchInputDecoration(String hint) {
    return InputDecoration(
      hintText: hint,
      contentPadding: EdgeInsets.symmetric(
        horizontal: 16.sp,
      ),
      fillColor: AppColors.bgGrey,
      filled: true,
      enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(20.sp),
        borderSide: BorderSide(color: AppColors.brGrey),
      ),
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(20.sp),
        borderSide: BorderSide(color: AppColors.brGrey),
      ),
      border: OutlineInputBorder(),
      suffix: Icon(
        Bootstrap.search,
        size: 18.sp,
      ),
    );
  }
}
