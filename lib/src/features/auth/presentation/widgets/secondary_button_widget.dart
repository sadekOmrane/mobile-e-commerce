import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mobile_ec/src/core/themes/app_colors.dart';
import 'package:mobile_ec/src/core/themes/app_text_styles.dart';

class SecondaryButtonWidget extends StatelessWidget {
  final String label;
  final String path;
  const SecondaryButtonWidget(
      {super.key, required this.label, required this.path});

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {
        Navigator.pushNamed(context, path);
      },
      child: Text(
        label,
        style: AppTextStyles.font16RegularBlack,
      ),
      style: ButtonStyle(
        minimumSize: MaterialStateProperty.all(
          Size(double.infinity, 40.sp),
        ),
        shape: MaterialStateProperty.all(
          RoundedRectangleBorder(
            side: BorderSide(color: AppColors.brGrey),
            borderRadius: BorderRadius.circular(18.sp),
          ),
        ),
        backgroundColor: MaterialStateProperty.all(AppColors.bgGrey),
      ),
    );
  }
}
