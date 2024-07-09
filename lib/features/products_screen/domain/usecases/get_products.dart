import 'package:dartz/dartz.dart';
import 'package:route_tech_submit_task/features/products_screen/domain/repositories/products_repository.dart';

import '../../../../core/error/failure_class.dart';
import '../entities/products_entity.dart';

class GetProducts{
  final ProductsRepository repository;

  GetProducts({required this.repository});
  Future<Either<Failure,ProductsEntity>> call() => repository.getProducts();

}