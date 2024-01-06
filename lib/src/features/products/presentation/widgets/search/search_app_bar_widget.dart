// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:icons_plus/icons_plus.dart';
import 'package:mobile_ec/src/core/constants/string_constants.dart';
import 'package:mobile_ec/src/core/routes/app_routes.dart';

import 'package:mobile_ec/src/core/themes/app_colors.dart';
import 'package:mobile_ec/src/core/widgets/app_bar_widget.dart';
import 'package:mobile_ec/src/features/products/presentation/screens/products_search_screen.dart';

class SearchAppBarWidget extends StatefulWidget {
  String? searchValue;
  SearchAppBarWidget({
    Key? key,
    this.searchValue,
  }) : super(key: key);

  @override
  State<SearchAppBarWidget> createState() => _SearchAppBarWidgetState();
}

class _SearchAppBarWidgetState extends State<SearchAppBarWidget> {
  TextEditingController searchController = TextEditingController();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    searchController.text = widget.searchValue ?? '';
  }

  @override
  Widget build(BuildContext context) {
    return AppBarWidget(
      title: Container(
        height: 40.h,
        margin: EdgeInsets.only(right: 10.sp),
        child: SearchBar(
          controller: searchController,
          shadowColor:
              MaterialStateColor.resolveWith((states) => Colors.transparent),
          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
            RoundedRectangleBorder(
              side: const BorderSide(
                color: AppColors.brGrey,
              ),
              borderRadius: BorderRadius.circular(25.sp),
            ),
          ),
          padding: MaterialStateProperty.all<EdgeInsetsGeometry>(
            EdgeInsets.symmetric(horizontal: 10.sp),
          ),
          backgroundColor:
              MaterialStateColor.resolveWith((states) => AppColors.bgGrey),
          leading: IconButton(
            padding: EdgeInsets.all(0),
            icon: Icon(
              Bootstrap.search,
              size: 18.sp,
              color: AppColors.black,
            ),
            onPressed: () {
              Navigator.pushNamed(context, AppRoutes.APP_PRODUCT_SEARCH_SCREEN);
            },
          ),
          onTap: () {},
          onChanged: (value) {},
          onSubmitted: (value) {},
          trailing: [
            IconButton(
              padding: EdgeInsets.zero,
              icon: Icon(
                Bootstrap.mic,
                size: 18.sp,
                color: AppColors.black,
              ),
              onPressed: () {},
            ),
            IconButton(
              padding: EdgeInsets.zero,
              icon: Icon(
                Bootstrap.x_lg,
                size: 18.sp,
                color: AppColors.black,
              ),
              onPressed: () {},
            )
          ],
        ),
      ),
      automaticallyImplyLeading: true,
    );
  }
}
