import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mobile_ec/src/base_screen.dart';
import 'package:mobile_ec/src/core/routes/app_routes.dart';
import 'package:mobile_ec/src/features/account/presentation/screens/account_screen.dart';
import 'package:mobile_ec/src/features/account/presentation/screens/favorites_screen.dart';
import 'package:mobile_ec/src/features/auth/presentation/screens/forget_password_screen.dart';
import 'package:mobile_ec/src/features/auth/presentation/screens/login_screen.dart';
import 'package:mobile_ec/src/features/auth/presentation/screens/register_screen.dart';
import 'package:mobile_ec/src/features/cart/presentation/screens/cart_screen.dart';
import 'package:mobile_ec/src/features/home/presentation/screens/home_screen.dart';
import 'package:mobile_ec/src/features/products/presentation/screens/products_search_screen.dart';
import 'package:mobile_ec/src/features/products/presentation/screens/search_screen.dart';
import 'package:mobile_ec/src/features/products/domain/entities/product_entity.dart';
import 'package:mobile_ec/src/features/products/presentation/screens/product_detail_screen.dart';

class AppRouter {
  static Route? generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case AppRoutes.APP_LOGIN_SCREEN:
        return CupertinoPageRoute(builder: (_) => const LoginScreen());
      case AppRoutes.APP_REGISTER_SCREEN:
        return CupertinoPageRoute(builder: (_) => const RegisterScreen());
      case AppRoutes.APP_FORGET_PASSWORD_SCREEN:
        return CupertinoPageRoute(builder: (_) => const ForgetPasswordScreen());
      case AppRoutes.APP_BASE_SCREEN:
        return CupertinoPageRoute(builder: (_) => const BaseScreen());
      case AppRoutes.APP_HOME_SCREEN:
        return CupertinoPageRoute(builder: (_) => const HomeScreen());
      case AppRoutes.APP_CART_SCREEN:
        return CupertinoPageRoute(builder: (_) => const CartScreen());
      case AppRoutes.APP_ACCOUNT_SCREEN:
        return CupertinoPageRoute(builder: (_) => const AccountScreen());
      case AppRoutes.APP_SEARCH_SCREEN:
        return CupertinoPageRoute(builder: (_) => const SearchScreen());
      case AppRoutes.APP_PRODUCT_SEARCH_SCREEN:
        return CupertinoPageRoute(builder: (_) => ProductsSearchScreen());
      case AppRoutes.APP_PRODUCT_DETAILS_SCREEN:
        return CupertinoPageRoute(
            builder: (_) => ProductDetailScreen(
                product: settings.arguments as ProductEntity));
      case AppRoutes.APP_FAVORITES_SCREEN:
        return CupertinoPageRoute(builder: (_) => const FavoritesScreen());
      default:
        return CupertinoPageRoute(
          builder: (_) => Scaffold(
            body: Center(
                child: Text(
              'No route defined for ${settings.name}',
            )),
          ),
        );
    }
  }
}
