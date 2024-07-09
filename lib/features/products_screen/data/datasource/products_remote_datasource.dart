import 'dart:convert';
import 'package:http/http.dart' as https;
import 'package:route_tech_submit_task/core/database/api/end_points.dart';
import 'package:route_tech_submit_task/features/products_screen/domain/entities/products_entity.dart';

class ProductsRemoteDatasource {
  Future<ProductsEntity> getProducts() async {
    var uri = Uri.https(EndPoints.baseURL,EndPoints.products);
    var response = await https.get(uri);
    return ProductsEntity.fromJson(jsonDecode(response.body));
  }
}