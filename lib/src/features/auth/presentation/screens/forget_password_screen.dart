import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mobile_ec/src/core/themes/app_colors.dart';
import 'package:mobile_ec/src/core/themes/app_text_styles.dart';
import 'package:mobile_ec/src/core/widgets/simple_app_bar_widget.dart';
import 'package:mobile_ec/src/features/auth/presentation/widgets/forget_password_form_widget.dart';
import 'package:mobile_ec/src/features/auth/presentation/widgets/social_auth_widget.dart';

class ForgetPasswordScreen extends StatelessWidget {
  const ForgetPasswordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: SimpleAppBarWidget(
        path: '/home',
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.all(20.sp),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Reset your password',
                  style: AppTextStyles.font26BoldBlack,
                ),
                SizedBox(height: 30.sp),
                const ForgetPasswordFormWidget(),
                SizedBox(height: 30.sp),
                const Divider(
                  color: AppColors.brGrey,
                  thickness: 1,
                ),
                SizedBox(height: 30.sp),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'or login with :',
                      style: AppTextStyles.font14RegularGrey,
                    ),
                  ],
                ),
                SizedBox(height: 15.sp),
                const SocialAuthWidget(),
                SizedBox(height: 30.sp),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Don\'t have an account ?',
                      style: AppTextStyles.font14RegularGrey,
                    ),
                    SizedBox(width: 5.sp),
                    InkWell(
                      onTap: () {
                        Navigator.pushNamed(context, '/register');
                      },
                      child: Text("Register",
                          style: AppTextStyles.font14BoldBlack),
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
