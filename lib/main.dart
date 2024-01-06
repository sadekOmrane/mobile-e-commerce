import 'package:flutter/material.dart';
import 'package:mobile_ec/src/core/injection/dependency_injection.dart';
import 'package:mobile_ec/src/core/routes/app_router.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mobile_ec/src/core/themes/app_colors.dart';

Future<void> main() async {
  await initDepInjection();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(360, 690),
      minTextAdapt: true,
      splitScreenMode: true,
      // Use builder only if you need to use library outside ScreenUtilInit context
      builder: (_, child) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          onGenerateRoute: AppRouter.generateRoute,
          initialRoute: '/auth/login',
          theme: ThemeData(
              fontFamily: 'Poppins',
              scaffoldBackgroundColor: Colors.white,
              colorScheme: const ColorScheme.light(
                primary: AppColors.amber,
                secondary: AppColors.brGrey,
                background: Colors.white,
              )),
        );
      },
    );
  }
}
