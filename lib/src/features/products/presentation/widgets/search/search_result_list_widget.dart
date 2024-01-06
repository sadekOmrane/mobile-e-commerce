import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:icons_plus/icons_plus.dart';
import 'package:mobile_ec/src/core/themes/app_colors.dart';
import 'package:mobile_ec/src/core/themes/app_text_styles.dart';

class SearchResultListWidget extends StatefulWidget {
  const SearchResultListWidget({super.key});

  @override
  State<SearchResultListWidget> createState() => _SearchResultListWidgetState();
}

class _SearchResultListWidgetState extends State<SearchResultListWidget> {
  @override
  Widget build(BuildContext context) {
    return SliverList.builder(
      itemBuilder: (context, index) {
        return InkWell(
          onTap: () {},
          child: Container(
            height: 50.h,
            padding: EdgeInsets.only(left: 10.sp, right: 10.sp),
            decoration: const BoxDecoration(
              border: Border(
                bottom: BorderSide(
                  color: AppColors.brGrey,
                  width: 1,
                ),
              ),
            ),
            child: Row(
              children: [
                /*CircleAvatar(
                  backgroundImage: Image.asset('assets/images/face.jpg').image,
                ),*/
                Expanded(
                  child: Padding(
                    padding: EdgeInsets.only(left: 10.sp, right: 10.sp),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Title $index',
                          style: AppTextStyles.font16RegularBlack,
                        ),
                        Text(
                          'description $index',
                          style: AppTextStyles.font14RegularGrey,
                        ),
                      ],
                    ),
                  ),
                ),
                Icon(
                  Bootstrap.chevron_right,
                  size: 18.sp,
                  color: AppColors.black,
                ),
              ],
            ),
          ),
        );
      },
      itemCount: 15,
    );
  }
}
