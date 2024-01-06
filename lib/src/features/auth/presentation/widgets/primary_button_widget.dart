import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mobile_ec/src/core/themes/app_colors.dart';
import 'package:mobile_ec/src/core/themes/app_text_styles.dart';

class PrimaryButtonWidget extends StatelessWidget {
  final String label;
  final Function onPressed;
  const PrimaryButtonWidget(
      {super.key, required this.label, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onPressed(),
      child: Text(
        label,
        style: AppTextStyles.font16RegularWhite,
      ),
      style: ButtonStyle(
        minimumSize: MaterialStateProperty.all(
          Size(double.infinity, 40.sp),
        ),
        shape: MaterialStateProperty.all(
          RoundedRectangleBorder(
            side: BorderSide(color: AppColors.brAmber),
            borderRadius: BorderRadius.circular(18.sp),
          ),
        ),
        backgroundColor: MaterialStateProperty.all(AppColors.amber),
      ),
    );
  }
}
