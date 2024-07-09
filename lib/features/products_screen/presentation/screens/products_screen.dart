import 'package:flutter/material.dart';
import 'package:route_tech_submit_task/core/general_component/color_helper.dart';

import '../component/products_gridview.dart';

class ProductsScreen extends StatelessWidget {
  const ProductsScreen({super.key});
  static const String routeName = 'Products Screen';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          forceMaterialTransparency: true,
          centerTitle: false,
          title:  Text('Route',style: TextStyle(
            color: ColorHelper.mainColor,
            fontSize: 30
          ),),
        ),
        body: const Padding(
            padding: EdgeInsets.symmetric(horizontal: 8.0),
            child: Column(
              children: [
                SearchBar(),
                SizedBox(height: 20,),
                ProductsGridview()
              ],
            )
        )
    );
  }
}
