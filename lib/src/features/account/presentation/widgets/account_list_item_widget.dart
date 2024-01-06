import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:icons_plus/icons_plus.dart';
import 'package:mobile_ec/src/core/themes/app_colors.dart';

class AccountListItemWidget extends StatelessWidget {
  final String label;
  final IconData icon;
  final Function()? onTap;

  const AccountListItemWidget(
      {super.key, required this.label, required this.icon, this.onTap});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        padding: EdgeInsets.symmetric(vertical: 16.0.sp, horizontal: 5.0.sp),
        decoration: const BoxDecoration(
          border: Border(
            bottom: BorderSide(
              color: AppColors.brGrey,
            ),
          ),
        ),
        child: Row(
          children: <Widget>[
            Icon(
              icon,
              size: 18.sp,
            ),
            SizedBox(width: 16.0.sp),
            Text(label),
            const Spacer(),
            Icon(Bootstrap.chevron_right, size: 18.sp),
          ],
        ),
      ),
    );
  }
}
