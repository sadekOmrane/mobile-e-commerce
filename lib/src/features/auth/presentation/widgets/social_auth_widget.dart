import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:mobile_ec/src/core/themes/app_button_style.dart';

class SocialAuthWidget extends StatelessWidget {
  const SocialAuthWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SizedBox(
          width: 40.w,
          height: 40.h,
          child: ElevatedButton(
            onPressed: () {},
            child: SvgPicture.asset(
              'assets/svgs/google_logo.svg',
              fit: BoxFit.contain,
            ),
            style: AppButtonStyle.simpleButtonStyle.copyWith(
              padding: MaterialStateProperty.all(
                EdgeInsets.all(10.sp),
              ),
            ),
          ),
        ),
        SizedBox(width: 15.sp),
        SizedBox(
          width: 40.w,
          height: 40.h,
          child: ElevatedButton(
            onPressed: () {},
            child: SvgPicture.asset(
              'assets/svgs/facebook_logo.svg',
              fit: BoxFit.contain,
            ),
            style: AppButtonStyle.simpleButtonStyle.copyWith(
              padding: MaterialStateProperty.all(
                EdgeInsets.all(10.sp),
              ),
            ),
          ),
        ),
        SizedBox(width: 15.sp),
        SizedBox(
          width: 40.w,
          height: 40.h,
          child: ElevatedButton(
            onPressed: () {},
            child: SvgPicture.asset(
              'assets/svgs/apple_logo.svg',
              fit: BoxFit.contain,
            ),
            style: AppButtonStyle.simpleButtonStyle.copyWith(
              padding: MaterialStateProperty.all(
                EdgeInsets.all(10.sp),
              ),
            ),
          ),
        ), // ElevatedButton
      ],
    );
  }
}
