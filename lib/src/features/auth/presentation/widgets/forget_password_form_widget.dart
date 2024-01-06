import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:icons_plus/icons_plus.dart';
import 'package:mobile_ec/src/core/themes/app_button_style.dart';
import 'package:mobile_ec/src/core/themes/app_colors.dart';
import 'package:mobile_ec/src/core/themes/app_input_decoration.dart';
import 'package:mobile_ec/src/core/themes/app_text_styles.dart';
import 'package:mobile_ec/src/core/widgets/input_widget.dart';
import 'package:mobile_ec/src/features/auth/presentation/widgets/primary_button_widget.dart';

class ForgetPasswordFormWidget extends StatefulWidget {
  const ForgetPasswordFormWidget({super.key});

  @override
  State<ForgetPasswordFormWidget> createState() =>
      _ForgetPasswordFormWidgetState();
}

class _ForgetPasswordFormWidgetState extends State<ForgetPasswordFormWidget> {
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
        ElevatedButton(
          child: Text(
            'Send Email',
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
