import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mobile_ec/src/core/themes/app_colors.dart';

class BottomNavbarWidget extends StatefulWidget {
  const BottomNavbarWidget({super.key});

  @override
  State<BottomNavbarWidget> createState() => _BottomNavbarWidgetState();
}

class _BottomNavbarWidgetState extends State<BottomNavbarWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.all(10.sp),
        decoration: BoxDecoration(
          border: Border.all(color: AppColors.brGrey),
          borderRadius: BorderRadius.vertical(
            top: Radius.circular(20.sp),
          ),
        ),
        child:
            SizedBox() /*GNav(
        onTabChange: (value) {
          setState(() {
            BlocProvider.of<BottomNavBarBloc>(context).add(
              BottomNavBarNavigateEvent(index: value),
            );
          });
        },
        haptic: true,
        tabBorderRadius: 18.sp,
        padding: EdgeInsets.symmetric(horizontal: 15.sp, vertical: 6.sp),
        tabBackgroundColor: Colors.transparent,
        tabActiveBorder: Border.all(color: AppColors.brGrey),
        curve: Curves.bounceInOut,
        gap: 7.sp,
        color: AppColors.grey,
        activeColor: AppColors.grey,
        tabs: const [
          GButton(
            iconColor: AppColors.grey,
            iconActiveColor: AppColors.amber,
            icon: Bootstrap.house,
            text: 'Home',
          ),
          GButton(
            iconColor: AppColors.grey,
            iconActiveColor: AppColors.amber,
            icon: Bootstrap.bag,
            text: 'Cart',
          ),
          GButton(
            iconColor: AppColors.grey,
            iconActiveColor: AppColors.amber,
            icon: Bootstrap.person,
            text: 'Account',
          ),
          GButton(
            iconColor: AppColors.grey,
            iconActiveColor: AppColors.amber,
            icon: Bootstrap.list,
            text: 'Menu',
          ),
        ],
      ),*/
        );
  }
}
