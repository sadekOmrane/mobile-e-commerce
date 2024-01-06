import 'package:flutter/material.dart';
import 'package:mobile_ec/src/core/themes/app_colors.dart';

class CircularLoadingWidget extends StatelessWidget {
  const CircularLoadingWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const SliverToBoxAdapter(
      child: SafeArea(
        child: Center(
          child: CircularProgressIndicator(
            backgroundColor: AppColors.bgGrey,
            color: AppColors.amber,
          ),
        ),
      ),
    );
  }
}
