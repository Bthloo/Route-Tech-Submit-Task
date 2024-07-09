import 'package:flutter/material.dart';
import 'package:route_tech_submit_task/core/general_component/color_helper.dart';
import 'package:route_tech_submit_task/core/general_component/product_card.dart';

class ProductsScreen extends StatelessWidget {
  const ProductsScreen({super.key});
static const String routeName = 'Products Screen';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Products Screen'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: GridView(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 10,
            mainAxisSpacing: 10,
            childAspectRatio: 0.77,
          ),
          children: [
            ProductCard(
                productName: "Product Name",
                productDescription: "This is a product description",
                productPrice: 1200,
                productOldPrice: 1500,
                productRating: 4.5
            ),
            ProductCard(
                productName: "Product Name",
                productDescription: "This is a product description",
                productPrice: 1200,
                productOldPrice: 1500,
                productRating: 4.5
            ),
            ProductCard(
                productName: "Product Name",
                productDescription: "This is a product description",
                productPrice: 1200,
                productOldPrice: 1500,
                productRating: 4.5
            ),

          ],

        )
      )
    );
  }
}
