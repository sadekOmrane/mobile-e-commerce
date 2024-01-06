import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mobile_ec/src/features/account/presentation/widgets/account_app_bar_widget.dart';
import 'package:mobile_ec/src/features/account/presentation/widgets/account_delete_button_widget.dart';
import 'package:mobile_ec/src/features/account/presentation/widgets/account_list_widget.dart';
import 'package:mobile_ec/src/features/account/presentation/widgets/account_user_info_widget.dart';

class AccountScreen extends StatefulWidget {
  const AccountScreen({super.key});

  @override
  State<AccountScreen> createState() => _AccountScreenState();
}

class _AccountScreenState extends State<AccountScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: CustomScrollView(
          slivers: <Widget>[
            AccountAppBarWidget(),
            SliverPadding(
              padding: EdgeInsets.only(left: 30.sp, right: 30.sp, top: 20.sp),
              sliver: AccountUserInfoWidget(),
            ),
            SliverPadding(
              padding: EdgeInsets.only(
                  left: 30.sp, right: 30.sp, top: 20.sp, bottom: 20.sp),
              sliver: AccountListWidget(),
            ),
            SliverPadding(
              padding:
                  EdgeInsets.only(left: 30.sp, right: 30.sp, bottom: 20.sp),
              sliver: AccountDeleteButtonWidget(),
            ),
          ], //<Widget>[]
        ),
      ),
    );
  }
}
