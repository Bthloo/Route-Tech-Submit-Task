part of 'get_products_cubit.dart';


sealed class GetProductsState {}

final class GetProductsInitial extends GetProductsState {}
final class GetProductsLoading extends GetProductsState {}
final class GetProductsSuccess extends GetProductsState {
  final ProductsEntity products;

  GetProductsSuccess(this.products);
}
final class GetProductsFailure extends GetProductsState {
  final String message;

  GetProductsFailure(this.message);
}
