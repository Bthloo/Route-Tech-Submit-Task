import 'package:flutter/material.dart';
import 'package:route_tech_submit_task/features/products_screen/products_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: ProductsScreen.routeName,
      routes: {
        ProductsScreen.routeName: (context) => const ProductsScreen(),
      },
    );
  }
}
