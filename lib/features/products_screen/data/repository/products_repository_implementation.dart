import 'dart:io';

import 'package:dartz/dartz.dart';
import 'package:flutter/cupertino.dart';

import 'package:route_tech_submit_task/core/error/failure_class.dart';


import '../../domain/entities/products_entity.dart';
import '../../domain/repositories/products_repository.dart';
import '../datasource/products_remote_datasource.dart';

class ProductsRepositoryImplementation extends ProductsRepository{
   final ProductsRemoteDatasource remoteDatasource;

  ProductsRepositoryImplementation({required this.remoteDatasource});
  @override
  Future<Either<Failure,ProductsEntity>> getProducts()async{
    try{
      final remoteProducts = await remoteDatasource.getProducts();
      return Right(remoteProducts);
    } catch(e){
      debugPrint(e.toString());
      return Left(Failure(message: e.toString()));
    }

  }

}