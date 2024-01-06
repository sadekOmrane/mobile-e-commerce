import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mobile_ec/src/features/cart/presentation/blocs/remote/cart_remote_bloc.dart';
import 'package:mobile_ec/src/features/cart/presentation/widgets/cart_app_bar_widget.dart';
import 'package:mobile_ec/src/features/cart/presentation/widgets/cart_list_widget.dart';

class CartScreen extends StatefulWidget {
  const CartScreen({super.key});

  @override
  State<CartScreen> createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    BlocProvider.of<CartRemoteBloc>(context).add(CartRemoteGetItemsEvent());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: CustomScrollView(
          slivers: <Widget>[
            CartAppBarWidget(),
            SliverPadding(
              padding: EdgeInsets.symmetric(vertical: 20.sp, horizontal: 30.sp),
              sliver: CartListWidget(),
            ),
          ], //<Widget>[]
        ),
      ),
    );
  }
}
