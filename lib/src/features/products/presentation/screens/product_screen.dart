import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:icons_plus/icons_plus.dart';
import 'package:mobile_ec/src/core/themes/app_modal_style.dart';
import 'package:mobile_ec/src/core/themes/app_text_styles.dart';
import 'package:mobile_ec/src/core/widgets/circular_loading_widget.dart';
import 'package:mobile_ec/src/features/products/domain/entities/product_entity.dart';
import 'package:mobile_ec/src/features/products/presentation/blocs/remote/remote_products_bloc.dart';
import 'package:mobile_ec/src/features/products/presentation/widgets/products/filter_widget.dart';
import 'package:mobile_ec/src/features/products/presentation/widgets/products/product_card_widget.dart';

class ProductsScreen extends StatefulWidget {
  const ProductsScreen({super.key});

  @override
  State<ProductsScreen> createState() => _ProductsScreenState();
}

class _ProductsScreenState extends State<ProductsScreen> {
  int crossAxisCount = 2;
  Icon viewIcon = Icon(
    Bootstrap.grid,
    size: 18.sp,
  );
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  Widget _buildTopBar(int length) {
    return SliverToBoxAdapter(
      child: Container(
        margin: EdgeInsets.only(left: 10.sp, right: 10.sp, top: 10.sp),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              'Search Results(${length})',
              style: AppTextStyles.font16RegularBlack,
            ),
            Row(
              children: [
                IconButton(
                  onPressed: () {
                    setState(() {
                      if (crossAxisCount == 2) {
                        crossAxisCount = 1;
                        viewIcon = Icon(
                          Bootstrap.list_task,
                          size: 18.sp,
                        );
                      } else {
                        crossAxisCount = 2;
                        viewIcon = Icon(
                          Bootstrap.grid,
                          size: 18.sp,
                        );
                      }
                    });
                  },
                  icon: viewIcon,
                ),
                IconButton(
                  onPressed: () {
                    AppModalStyle.bottomModalSheetStyle(
                      context,
                      (BuildContext context) {
                        return FilterWidget();
                      },
                    );
                  },
                  icon: Icon(
                    Bootstrap.filter,
                    size: 18.sp,
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }

  Widget _buildProducts(List<ProductEntity> products) {
    return SliverGrid.builder(
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: crossAxisCount,
          childAspectRatio: crossAxisCount == 2 ? 0.5 : 0.9),
      itemCount: products.length,
      itemBuilder: (context, index) {
        return ProductCardWidget(product: products[index]);
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ProductsRemoteBloc, ProductsRemoteState>(
      builder: (context, state) {
        if (state is ProductsRemoteGetLoading) {
          return CircularLoadingWidget();
        } else if (state is ProductsRemoteGetLoaded) {
          return SliverMainAxisGroup(slivers: [
            _buildTopBar(state.products!.length),
            _buildProducts(state.products!),
          ]);
        } else if (state is ProductsRemoteGetError) {
          return SliverToBoxAdapter(
            child: SizedBox(
              height: 200.h,
              child: const Center(
                child: Icon(
                  Bootstrap.arrow_clockwise,
                ),
              ),
            ),
          );
        }
        return SliverToBoxAdapter(
          child: SizedBox(),
        );
      },
    );
  }
}
