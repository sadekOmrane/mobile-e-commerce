import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:icons_plus/icons_plus.dart';
import 'package:mobile_ec/src/core/themes/app_button_style.dart';
import 'package:mobile_ec/src/core/themes/app_colors.dart';
import 'package:mobile_ec/src/core/themes/app_text_styles.dart';

class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            padding: EdgeInsets.all(40.sp),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  Icons.shopping_bag_outlined,
                  size: 64.sp,
                  color: AppColors.amber,
                ),
                SizedBox(height: 12.sp),
                Text(
                  '3ALA 3AJLA',
                  style: AppTextStyles.font20BoldBlack,
                ),
                Text(
                  'Lorem ipsum dolor sit amet, consectetur adipiscing elit.',
                  style: AppTextStyles.font14RegularGrey,
                  textAlign: TextAlign.center,
                ),
                SizedBox(height: 12.sp),
                ElevatedButton(
                  style: AppButtonStyle.simpleButtonStyle.copyWith(
                    padding: MaterialStateProperty.all<EdgeInsets>(
                        EdgeInsets.all(12.sp)),
                  ),
                  onPressed: () {
                    Navigator.pushNamed(context, '/home');
                  },
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text('Get started'),
                      SizedBox(width: 8.sp),
                      Icon(
                        Bootstrap.arrow_bar_right,
                        size: 18.sp,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
