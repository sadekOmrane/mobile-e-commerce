import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:icons_plus/icons_plus.dart';
import 'package:mobile_ec/src/core/themes/app_button_style.dart';
import 'package:mobile_ec/src/core/themes/app_text_styles.dart';
import 'package:mobile_ec/src/core/widgets/input_widget.dart';

class RegisterFormWidget extends StatefulWidget {
  const RegisterFormWidget({super.key});

  @override
  State<RegisterFormWidget> createState() => _RegisterFormWidgetState();
}

class _RegisterFormWidgetState extends State<RegisterFormWidget> {
  bool _obscureText = true;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        InputWidget(
          label: 'Email',
          hint: 'example@example.com',
          prefixIcon: Icon(
            Bootstrap.envelope_at,
            size: 18.sp,
          ),
        ),
        SizedBox(height: 15.sp),
        InputWidget(
          label: 'Password',
          prefixIcon: Icon(
            Bootstrap.lock,
            size: 18.sp,
          ),
          suffixIcon: IconButton(
            icon: _obscureText
                ? Icon(
                    Bootstrap.eye_slash,
                    size: 18.sp,
                  )
                : Icon(
                    Bootstrap.eye,
                    size: 18.sp,
                  ),
            onPressed: () {},
          ),
          obscureText: _obscureText,
        ),
        SizedBox(height: 15.sp),
        InputWidget(
          label: 'Confirm Password',
          prefixIcon: Icon(
            Bootstrap.lock,
            size: 18.sp,
          ),
          obscureText: _obscureText,
        ),
        SizedBox(height: 15.sp),
        ElevatedButton(
          child: Text(
            'Register',
            style: AppTextStyles.font16RegularBlack,
          ),
          onPressed: () {},
          style: AppButtonStyle.primaryButtonStyle.copyWith(
            padding: MaterialStateProperty.all(
              EdgeInsets.symmetric(
                vertical: 12.sp,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
