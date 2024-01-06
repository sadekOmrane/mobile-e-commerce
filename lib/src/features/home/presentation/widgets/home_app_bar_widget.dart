import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:icons_plus/icons_plus.dart';
import 'package:mobile_ec/src/core/routes/app_routes.dart';
import 'package:mobile_ec/src/core/themes/app_colors.dart';
import 'package:mobile_ec/src/core/themes/app_text_styles.dart';
import 'package:mobile_ec/src/core/widgets/app_bar_widget.dart';
import 'package:mobile_ec/src/features/auth/data/datasources/secure_storage.dart';
import 'package:mobile_ec/src/features/auth/domain/entities/user_entity.dart';

class HomeAppBarWidget extends StatefulWidget {
  const HomeAppBarWidget({super.key});

  @override
  State<HomeAppBarWidget> createState() => _HomeAppBarWidgetState();
}

class _HomeAppBarWidgetState extends State<HomeAppBarWidget> {
  UserEntity? user;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    SecureStorage().getUser().then((value) {
      setState(() {
        user = value;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return AppBarWidget(
      automaticallyImplyLeading: false,
      leading: InkWell(
        onTap: () {
          if (user != null) {
            Navigator.pushNamed(context, AppRoutes.APP_ACCOUNT_SCREEN);
          } else {
            Navigator.pushNamed(context, AppRoutes.APP_LOGIN_SCREEN);
          }
        },
        child: Container(
          margin: EdgeInsets.symmetric(horizontal: 10.sp),
          child: (user != null && user!.profilePicture != null)
              ? CircleAvatar(
                  backgroundImage: Image.network(
                    user!.profilePicture!,
                  ).image,
                )
              : CircleAvatar(
                  backgroundColor: AppColors.bgGrey,
                  child: Icon(
                    Bootstrap.person_fill,
                    size: 25.sp,
                    color: AppColors.brGrey,
                  ),
                ),
        ),
      ),
      title: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Hello 👋',
            style: AppTextStyles.font14RegularBrightGrey,
          ),
          Text(
            user != null ? '${user!.lastName} ${user!.firstName}' : 'Customer',
            style: AppTextStyles.font16BoldBlack,
          ),
        ],
      ),
      actions: <Widget>[
        IconButton(
          icon: Icon(
            Bootstrap.search,
            size: 18.sp,
            color: AppColors.black,
          ),
          tooltip: 'Search Icon',
          onPressed: () {
            Navigator.pushNamed(context, AppRoutes.APP_SEARCH_SCREEN);
          },
        ),
        IconButton(
          icon: Icon(
            Bootstrap.bell,
            size: 18.sp,
            color: AppColors.black,
          ),
          tooltip: 'Notification Icon',
          onPressed: () {},
        ),
      ],
    );
  }
}
