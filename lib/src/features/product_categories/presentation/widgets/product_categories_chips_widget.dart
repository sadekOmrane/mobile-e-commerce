// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mobile_ec/src/core/themes/app_colors.dart';
import 'package:mobile_ec/src/core/themes/app_text_styles.dart';
import 'package:mobile_ec/src/core/widgets/circular_loading_widget.dart';
import 'package:mobile_ec/src/features/product_categories/presentation/blocs/remote/product_categories_remote_bloc.dart';

class ProductCategoriesChipsWidget extends StatefulWidget {
  const ProductCategoriesChipsWidget({
    Key? key,
  }) : super(key: key);

  @override
  State<ProductCategoriesChipsWidget> createState() =>
      _ProductCategoriesChipsWidgetState();
}

class _ProductCategoriesChipsWidgetState
    extends State<ProductCategoriesChipsWidget> {
  int selectedChip = 0;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    BlocProvider.of<ProductCategoriesRemoteBloc>(context)
        .add(GetProductCategoriesRemoteEvent());
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ProductCategoriesRemoteBloc,
        ProductCategoriesRemoteState>(
      builder: (context, state) {
        if (state is ProductCategoriesRemoteLoaded) {
          return SliverToBoxAdapter(
            child: Container(
              height: 50.h,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: state.productsCategories!.length,
                itemBuilder: (context, index) {
                  return Container(
                    margin: EdgeInsets.only(left: 5.sp, right: 5.sp),
                    child: FilterChip(
                      clipBehavior: Clip.hardEdge,
                      backgroundColor: Colors.white,
                      side: BorderSide(
                          color: selectedChip == index
                              ? AppColors.selectedBrGrey
                              : AppColors.brGrey),
                      label: Text(
                          state.productsCategories![index].name.toString(),
                          style: AppTextStyles.font14RegularGrey),
                      selected: selectedChip == index,
                      selectedColor: AppColors.bgGrey,
                      checkmarkColor: AppColors.amber,
                      showCheckmark: true,
                      onSelected: (bool selected) {
                        setState(() {
                          selectedChip = selected ? index : 0;
                        });
                      },
                    ),
                  );
                },
              ),
            ),
          );
        } else if (state is ProductCategoriesRemoteLoading) {
          return CircularLoadingWidget();
        } else if (state is ProductCategoriesRemoteError) {
          return SliverToBoxAdapter(
            child: Container(
              height: 50.h,
              child: Center(
                child: Text(
                  state.error!.message.toString(),
                  style: AppTextStyles.font14RegularGrey,
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
