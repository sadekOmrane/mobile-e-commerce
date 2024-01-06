import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mobile_ec/src/core/themes/app_text_styles.dart';

class AccountUserInfoWidget extends StatelessWidget {
  const AccountUserInfoWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverPadding(
      padding: EdgeInsets.zero,
      sliver: SliverToBoxAdapter(
        child: Center(
          child: Column(
            children: [
              CircleAvatar(
                radius: 50,
                backgroundImage: Image.asset('assets/images/face.jpg').image,
              ),
              SizedBox(height: 10.h),
              Text(
                'Omrane Sadek',
                style: AppTextStyles.font16RegularBlack,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
