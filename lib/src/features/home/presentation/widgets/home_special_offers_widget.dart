import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:icons_plus/icons_plus.dart';
import 'package:mobile_ec/src/core/themes/app_colors.dart';
import 'package:mobile_ec/src/core/themes/app_text_styles.dart';

class HomeSpecialOffersWidget extends StatelessWidget {
  const HomeSpecialOffersWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverPadding(
      padding: EdgeInsets.symmetric(horizontal: 20.sp),
      sliver: SliverToBoxAdapter(
          child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 150.h,
            decoration: BoxDecoration(
              color: AppColors.darkBgGrey,
              borderRadius: BorderRadius.circular(18.sp),
            ),
            child: Row(
              children: [
                Expanded(
                  flex: 6,
                  child: Container(
                    padding: EdgeInsets.only(left: 20.sp),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          '30%',
                          style: AppTextStyles.font26BoldBlack,
                        ),
                        SizedBox(height: 10.sp),
                        Text(
                          'Today\'s Deal!',
                          style: AppTextStyles.font16BoldBlack,
                        ),
                        SizedBox(height: 10.sp),
                        Text(
                          'Get discount on your first order only today!',
                          style: AppTextStyles.font14RegularBlack,
                        ),
                      ],
                    ),
                  ),
                ),
                Expanded(
                    flex: 4,
                    child: Container(
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage('assets/images/women.png'),
                          fit: BoxFit.fitHeight,
                        ),
                      ),
                    ))
              ],
            ),
          ),
          SizedBox(height: 15.sp),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              _buildCircularOffer(
                  'Watch',
                  Icon(
                    Bootstrap.watch,
                    size: 20.sp,
                  )),
              _buildCircularOffer(
                  'Jewelry',
                  Icon(
                    FontAwesome.gem,
                    size: 20.sp,
                  )),
              _buildCircularOffer(
                  'Electronics',
                  Icon(
                    Bootstrap.laptop,
                    size: 20.sp,
                  )),
              _buildCircularOffer(
                  'Clothes',
                  Icon(
                    FontAwesome.shirt,
                    size: 20.sp,
                  )),
            ],
          ),
          SizedBox(height: 15.sp),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              _buildCircularOffer(
                  'Bags',
                  Icon(
                    Bootstrap.handbag,
                    size: 20.sp,
                  )),
              _buildCircularOffer(
                  'Kitchen',
                  Icon(
                    FontAwesome.utensils,
                    size: 20.sp,
                  )),
              _buildCircularOffer(
                  'Toys',
                  Icon(
                    Bootstrap.robot,
                    size: 20.sp,
                  )),
              _buildCircularOffer(
                  'Vehiculs',
                  Icon(
                    Bootstrap.car_front,
                    size: 20.sp,
                  )),
            ],
          ),
        ],
      )),
    );
  }

  Widget _buildCircularOffer(String title, Widget icon) {
    return Column(
      children: [
        Container(
          height: 50.sp,
          width: 50.sp,
          decoration: BoxDecoration(
            color: AppColors.darkBgGrey,
            borderRadius: BorderRadius.circular(50.sp),
          ),
          child: Center(
            child: icon,
          ),
        ),
        SizedBox(height: 5.sp),
        Text(
          title,
          style: AppTextStyles.font14RegularBlack,
        ),
      ],
    );
  }
}
