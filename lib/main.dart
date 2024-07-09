import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:route_tech_submit_task/core/general_component/color_helper.dart';

import 'features/products_screen/presentation/screens/products_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(360, 690),
      minTextAdapt: true,
      splitScreenMode: true,
      ensureScreenSize: true,
      useInheritedMediaQuery: true,
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        initialRoute: ProductsScreen.routeName,
        theme: ThemeData(
         primaryColor: ColorHelper.mainColor
        ),
        routes: {
          ProductsScreen.routeName: (context) => const ProductsScreen(),
        },
      ),
    );
  }
}
