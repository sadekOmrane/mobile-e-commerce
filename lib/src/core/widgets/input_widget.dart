// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import 'package:mobile_ec/src/core/themes/app_colors.dart';
import 'package:mobile_ec/src/core/themes/app_input_decoration.dart';

class InputWidget extends StatelessWidget {
  TextEditingController? controller;
  String? label;
  String? hint;
  Widget? prefixIcon;
  Widget? suffixIcon;
  bool? obscureText;
  TextInputType? keyboardType;
  InputWidget({
    Key? key,
    this.controller,
    this.label,
    this.hint,
    this.prefixIcon,
    this.suffixIcon,
    this.keyboardType,
    this.obscureText,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      cursorColor: AppColors.black,
      decoration: AppInputDecoration.inputDecoration(
        label,
        hint,
        prefixIcon,
        suffixIcon,
      ),
      keyboardType: keyboardType,
      obscureText: obscureText ?? false,
    );
  }
}
