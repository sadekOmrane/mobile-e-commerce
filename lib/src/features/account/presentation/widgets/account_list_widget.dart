import 'package:flutter/material.dart';
import 'package:icons_plus/icons_plus.dart';
import 'package:mobile_ec/src/core/routes/app_routes.dart';
import 'package:mobile_ec/src/features/account/presentation/widgets/account_list_item_widget.dart';

class AccountListWidget extends StatelessWidget {
  const AccountListWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverList.list(
      children: [
        AccountListItemWidget(
          icon: Bootstrap.person,
          label: 'Profile',
          onTap: () {},
        ),
        AccountListItemWidget(
          icon: Bootstrap.credit_card,
          label: 'Payment',
          onTap: () {},
        ),
        AccountListItemWidget(
          icon: Bootstrap.bag,
          label: 'Orders',
          onTap: () {},
        ),
        AccountListItemWidget(
          icon: Bootstrap.heart,
          label: 'Favorits',
          onTap: () {
            Navigator.pushNamed(context, AppRoutes.APP_FAVORITES_SCREEN);
          },
        ),
        AccountListItemWidget(
          icon: Bootstrap.gear,
          label: 'Settings',
          onTap: () {},
        ),
        AccountListItemWidget(
          icon: Bootstrap.info_circle,
          label: 'About',
          onTap: () {},
        ),
      ],
    );
  }
}
