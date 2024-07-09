import 'package:dartz/dartz.dart';
import 'package:route_tech_submit_task/core/error/failure_class.dart';
import 'package:route_tech_submit_task/features/products_screen/domain/entities/product_entity.dart';

abstract class ProductsRepository{
  Future<Either<Failure,ProductEntity>> getProducts();
}