// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mobile_ec/src/core/themes/app_colors.dart';
import 'package:mobile_ec/src/core/themes/app_text_styles.dart';

class MessageErrorWidget extends StatelessWidget {
  String message;
  MessageErrorWidget({
    Key? key,
    required this.message,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10.sp),
      decoration: BoxDecoration(
        border: Border.all(color: AppColors.red),
        borderRadius: BorderRadius.circular(10.sp),
      ),
      child: Text(
        message,
        textAlign: TextAlign.center,
        style: AppTextStyles.font14RegularRed,
      ),
    );
  }
}
