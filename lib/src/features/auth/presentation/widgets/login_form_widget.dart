import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:icons_plus/icons_plus.dart';
import 'package:mobile_ec/src/core/themes/app_button_style.dart';
import 'package:mobile_ec/src/core/themes/app_colors.dart';
import 'package:mobile_ec/src/core/themes/app_text_styles.dart';
import 'package:mobile_ec/src/core/widgets/input_widget.dart';
import 'package:mobile_ec/src/core/widgets/message_error_widget.dart';
import 'package:mobile_ec/src/features/auth/presentation/blocs/remote/remote_auth_bloc.dart';

class LoginFormWidget extends StatefulWidget {
  const LoginFormWidget({super.key});

  @override
  State<LoginFormWidget> createState() => _LoginFormWidgetState();
}

class _LoginFormWidgetState extends State<LoginFormWidget> {
  bool _obscureText = true;
  bool _rememberMe = false;
  final TextEditingController usernameController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        InputWidget(
          controller: usernameController,
          label: 'Email',
          hint: 'example@example.com',
          prefixIcon: Icon(
            Bootstrap.envelope_at,
            size: 18.sp,
          ),
        ),
        SizedBox(height: 15.sp),
        InputWidget(
          controller: passwordController,
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
            onPressed: () {
              setState(() {
                _obscureText = !_obscureText;
              });
            },
          ),
          obscureText: _obscureText,
        ),
        CheckboxListTile(
          contentPadding: EdgeInsets.zero,
          title: Text(
            'Remember me',
            style: AppTextStyles.font14RegularGrey,
          ),
          value: _rememberMe,
          onChanged: (newValue) {
            setState(() {
              _rememberMe = newValue!;
            });
          },
          controlAffinity: ListTileControlAffinity.leading,
          checkColor: AppColors.amber,
          fillColor: MaterialStatePropertyAll(Colors.transparent),
        ),
        ElevatedButton(
          child: Text(
            'Login',
            style: AppTextStyles.font16RegularBlack,
          ),
          onPressed: () {
            BlocProvider.of<RemoteAuthBloc>(context).add(
              LoginEvent(
                username: usernameController.text,
                password: passwordController.text,
              ),
            );
          },
          style: AppButtonStyle.primaryButtonStyle.copyWith(
            padding: MaterialStateProperty.all(
              EdgeInsets.symmetric(
                vertical: 12.sp,
              ),
            ),
          ),
        ),
        SizedBox(height: 15.sp),
        BlocConsumer<RemoteAuthBloc, RemoteAuthState>(
          listener: (context, state) {
            if (state is RemoteLogedin) {
              Navigator.pushNamedAndRemoveUntil(
                  context, '/client', (route) => false);
            }
          },
          builder: (context, state) {
            if (state is RemoteLoginLoading) {
              return Center(
                child: CircularProgressIndicator(),
              );
            } else if (state is RemoteLoginError) {
              return MessageErrorWidget(message: state.error!.message!);
            }

            return SizedBox();
          },
        ),
        SizedBox(height: 15.sp),
      ],
    );
  }
}
