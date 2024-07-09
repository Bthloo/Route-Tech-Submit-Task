import 'package:dartz/dartz.dart';
import 'package:route_tech_submit_task/core/error/failure_class.dart';

import '../entities/products_entity.dart';

abstract class ProductsRepository{
  Future<Either<Failure,ProductsEntity>> getProducts();
}