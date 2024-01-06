import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mobile_ec/src/core/themes/app_text_styles.dart';

class FilterWidget extends StatelessWidget {
  const FilterWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width - 40.w,
      height: MediaQuery.of(context).size.height / 2,
      child: Text(
        'Filters :',
        style: AppTextStyles.font16RegularBlack,
      ),
    );
  }
}
