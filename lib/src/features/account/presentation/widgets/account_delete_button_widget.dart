import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mobile_ec/src/core/themes/app_colors.dart';
import 'package:mobile_ec/src/features/auth/data/datasources/secure_storage.dart';

class AccountDeleteButtonWidget extends StatelessWidget {
  const AccountDeleteButtonWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          padding: EdgeInsets.symmetric(vertical: 14.sp),
          backgroundColor: AppColors.bgGrey,
          shadowColor: Colors.transparent,
          foregroundColor: AppColors.red,
          shape: RoundedRectangleBorder(
            side: const BorderSide(
              color: AppColors.brGrey,
            ),
            borderRadius: BorderRadius.circular(18.sp),
          ),
        ),
        onPressed: () {
          SecureStorage().deleteAll();
          Navigator.pushNamedAndRemoveUntil(
              context, '/login', (route) => false);
        },
        child: Text('Log Out'),
      ),
    );
  }
}
