import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../../core/general_component/product_card.dart';
import '../cubit/get_products_cubit.dart';

class ProductsGridview extends StatelessWidget {
  const ProductsGridview({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) =>
      GetProductsCubit()
        ..getProducts(),
      child: BlocBuilder<GetProductsCubit, GetProductsState>(
        builder: (context, state) {
          if(state is GetProductsLoading){
            return  const Center(
                child: CircularProgressIndicator()
            );
          }
          else if(state is GetProductsSuccess){
            return Expanded(
              child: GridView.builder(
                itemCount: state.products.products?.length,
                gridDelegate:  const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    mainAxisSpacing: 10,
                    crossAxisSpacing: 10,
                    childAspectRatio: .7
                ),
                itemBuilder: (context, index) {
                  num price = state.products.products?[index].price ?? 0;
                  num discountPercentage = state.products.products?[index].discountPercentage ?? 0;
                  num oldPrice = price - (price * (discountPercentage /100) );
                  return ProductCard(
                      productImage: state.products.products?[index].thumbnail ?? "No Title",
                      productName: state.products.products?[index].title ?? "No Title",
                      productDescription: state.products.products?[index].description ?? "No Description",
                      productPrice: oldPrice.round(),
                      productOldPrice: price,
                      productRating:state.products.products?[index].rating ?? 0
                  );
                },
              ),
            );
          }
          else if(state is GetProductsFailure){
            return Center(
              child: Text("Something went wrong\n${state.message}"),
            );
          }else{
            return const Center(
              child: Text("Unknown State"),
            );
          }
        },
      ),
    );
  }
}
