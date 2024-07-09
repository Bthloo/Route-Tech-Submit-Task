import 'package:bloc/bloc.dart';
import 'package:route_tech_submit_task/features/products_screen/data/datasource/products_remote_datasource.dart';
import 'package:route_tech_submit_task/features/products_screen/domain/entities/products_entity.dart';
import 'package:route_tech_submit_task/features/products_screen/domain/usecases/get_products.dart';

import '../../data/repository/products_repository_implementation.dart';


part 'get_products_state.dart';

class GetProductsCubit extends Cubit<GetProductsState> {
  GetProductsCubit() : super(GetProductsInitial());
  getProducts()async{
    emit(GetProductsLoading());
  final get = await GetProducts(repository: ProductsRepositoryImplementation(
        remoteDatasource: ProductsRemoteDatasource()

    )).call();

  get.fold(
      (failed) => emit(GetProductsFailure(failed.toString())),
     (success) => emit(GetProductsSuccess(success))
  );

  }
}
