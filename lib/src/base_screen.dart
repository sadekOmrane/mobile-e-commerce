import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:icons_plus/icons_plus.dart';
import 'package:mobile_ec/src/core/blocs/bottom/bottom_nav_bar_bloc.dart';
import 'package:mobile_ec/src/core/injection/dependency_injection.dart';
import 'package:mobile_ec/src/core/routes/app_router.dart';
import 'package:mobile_ec/src/core/themes/app_colors.dart';
import 'package:mobile_ec/src/core/widgets/bottom_navbar_widget.dart';
import 'package:mobile_ec/src/features/account/presentation/screens/account_screen.dart';
import 'package:mobile_ec/src/features/cart/presentation/blocs/remote/cart_remote_bloc.dart';
import 'package:mobile_ec/src/features/cart/presentation/screens/cart_screen.dart';
import 'package:mobile_ec/src/features/home/presentation/screens/home_screen.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class BaseScreen extends StatefulWidget {
  const BaseScreen({super.key});

  @override
  State<BaseScreen> createState() => _BaseScreenState();
}

class _BaseScreenState extends State<BaseScreen> {
  int currentIndex = 0;
  final List<Widget> _pages = [
    HomeScreen(),
    CartScreen(),
    AccountScreen(),
    Tab(text: 'Tab 3'),
  ];

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<CartRemoteBloc>(
          create: (context) => sl<CartRemoteBloc>(),
        ),
      ],
      child: CupertinoTabScaffold(
        tabBar: _buildBottomNavBar(),
        tabBuilder: (context, index) {
          return CupertinoTabView(
            onGenerateRoute: AppRouter.generateRoute,
            builder: (context) => CupertinoPageScaffold(
              child: _pages[index],
            ),
          );
        },
      ),
    );
  }

  CupertinoTabBar _buildBottomNavBar() {
    return CupertinoTabBar(
      backgroundColor: Colors.white,
      inactiveColor: AppColors.grey,
      activeColor: AppColors.grey,
      iconSize: 20.sp,
      border: Border.all(color: AppColors.brGrey),
      height: 48.h,
      items: const [
        BottomNavigationBarItem(
          icon: Icon(Bootstrap.house, color: AppColors.brightGrey),
          activeIcon: Icon(Bootstrap.house_fill, color: AppColors.amber),
          label: 'Home',
        ),
        BottomNavigationBarItem(
          icon: Icon(Bootstrap.bag, color: AppColors.brightGrey),
          activeIcon: Icon(Bootstrap.bag_fill, color: AppColors.amber),
          label: 'Cart',
        ),
        BottomNavigationBarItem(
          icon: Icon(Bootstrap.person, color: AppColors.brightGrey),
          activeIcon: Icon(Bootstrap.person_fill, color: AppColors.amber),
          label: 'Account',
        ),
        BottomNavigationBarItem(
          icon: Icon(Bootstrap.list, color: AppColors.brightGrey),
          activeIcon: Icon(Bootstrap.list, color: AppColors.amber),
          label: 'Menu',
        ),
      ],
    );
  }
}


/*MultiBlocProvider(
      providers: [
        BlocProvider<BottomNavBarBloc>(
          create: (context) => BottomNavBarBloc(),
        ),
        BlocProvider<CartRemoteBloc>(
          create: (context) => sl<CartRemoteBloc>(),
        ),
      ],
      child: Scaffold(
        body: BlocListener<BottomNavBarBloc, BottomNavBarState>(
          listener: (context, state) {
            if (state is BottomNavBarNavigation) {
              setState(() {
                currentIndex = state.index;
              });
            }
          },
          child: IndexedStack(
            index: currentIndex,
            children: _pages,
          ),
        ),
        bottomNavigationBar: BottomNavbarWidget(),
      ),
    );*/