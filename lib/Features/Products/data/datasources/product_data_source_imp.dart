import 'package:nike_ecommerce_flutter/Core/Constant/Exception/exeption.dart';
import 'package:nike_ecommerce_flutter/Features/Products/data/datasources/product_data_source.dart';
import 'package:nike_ecommerce_flutter/Features/Products/data/entity/product_entity.dart';
import 'package:dio/dio.dart';

class ProductRemoteDataSource implements IProductDataSource {
  final Dio httpClient;

  ProductRemoteDataSource({required this.httpClient});

  @override
  Future<List<ProductEntity>> getProducts(int sort) async {
    final response = await httpClient.get("product/list?sort=$sort");
    validateResponse(response);
    final products = <ProductEntity>[];
    (response.data as List).forEach((element) {
      products.add(ProductEntity.fromJson(element));
    });
    return products;
  }

  @override
  Future<List<ProductEntity>> getProductsBySearch(String searchTerm) async {
    final response = await httpClient.get("product/search?q=$searchTerm");
    validateResponse(response);
    final products = <ProductEntity>[];
    (response.data as List).forEach((element) {
      products.add(ProductEntity.fromJson(element));
    });
    return products;
  }

  validateResponse(Response response) {
    if (response.statusCode != 200) {
      throw AppException(
          message: "Something went wrong", statusCode: response.statusCode);
    }
  }
}
