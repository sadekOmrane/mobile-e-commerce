import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mobile_ec/src/core/injection/dependency_injection.dart';
import 'package:mobile_ec/src/core/themes/app_text_styles.dart';
import 'package:mobile_ec/src/features/home/presentation/widgets/home_app_bar_widget.dart';
import 'package:mobile_ec/src/features/home/presentation/widgets/home_most_popular_widget.dart';
import 'package:mobile_ec/src/features/home/presentation/widgets/home_special_offers_widget.dart';
import 'package:mobile_ec/src/features/product_categories/presentation/blocs/remote/product_categories_remote_bloc.dart';
import 'package:mobile_ec/src/features/product_categories/presentation/widgets/product_categories_chips_widget.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: CustomScrollView(
          slivers: <Widget>[
            HomeAppBarWidget(),
            BlocProvider<ProductCategoriesRemoteBloc>(
              create: (context) => sl<ProductCategoriesRemoteBloc>(),
              child: ProductCategoriesChipsWidget(),
            ),
            SliverToBoxAdapter(
              child: SizedBox(
                height: 15.sp,
              ),
            ),
            // Special Offers
            SliverPadding(
              padding: EdgeInsets.symmetric(horizontal: 20.sp),
              sliver: SliverToBoxAdapter(
                child: Text(
                  'Special Offers',
                  style: AppTextStyles.font20BoldBlack,
                ),
              ),
            ),
            SliverToBoxAdapter(
              child: SizedBox(
                height: 15.sp,
              ),
            ),
            HomeSpecialOffersWidget(),

            SliverToBoxAdapter(
              child: SizedBox(
                height: 15.sp,
              ),
            ),

            // Most Popular
            SliverPadding(
              padding: EdgeInsets.symmetric(horizontal: 20.sp),
              sliver: SliverToBoxAdapter(
                child: Text(
                  'Most Popular',
                  style: AppTextStyles.font20BoldBlack,
                ),
              ),
            ),
            SliverToBoxAdapter(
              child: SizedBox(
                height: 10.sp,
              ),
            ),
            HomeMostPopularWidget(),
          ], //<Widget>[]
        ),
      ),
    );
  }
}
