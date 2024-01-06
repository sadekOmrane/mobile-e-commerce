import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mobile_ec/src/core/injection/dependency_injection.dart';
import 'package:mobile_ec/src/core/themes/app_colors.dart';
import 'package:mobile_ec/src/core/themes/app_text_styles.dart';
import 'package:mobile_ec/src/core/widgets/simple_app_bar_widget.dart';
import 'package:mobile_ec/src/features/auth/presentation/blocs/remote/remote_auth_bloc.dart';
import 'package:mobile_ec/src/features/auth/presentation/widgets/login_form_widget.dart';
import 'package:mobile_ec/src/features/auth/presentation/widgets/social_auth_widget.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => sl<RemoteAuthBloc>(),
      child: Scaffold(
        appBar: SimpleAppBarWidget(
          path: '/client',
        ),
        body: SafeArea(
          child: SingleChildScrollView(
            child: Padding(
              padding: EdgeInsets.all(20.sp),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Login to your account',
                    style: AppTextStyles.font26BoldBlack,
                  ),
                  SizedBox(height: 30.sp),
                  const LoginFormWidget(),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      InkWell(
                        onTap: () {
                          Navigator.pushNamed(context, '/forget-password');
                        },
                        child: Text("Forgot Password ?",
                            style: AppTextStyles.font14BoldBlack),
                      ),
                    ],
                  ),
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
                  SocialAuthWidget(),
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
      ),
    );
  }
}
