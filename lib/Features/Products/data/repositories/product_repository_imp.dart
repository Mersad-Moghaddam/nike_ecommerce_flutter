import 'package:dio/dio.dart';
import 'package:nike_ecommerce_flutter/Features/Products/data/datasources/product_data_source.dart';
import 'package:nike_ecommerce_flutter/Features/Products/data/datasources/product_data_source_imp.dart';
import 'package:nike_ecommerce_flutter/Features/Products/data/entity/product_entity.dart';
import 'package:nike_ecommerce_flutter/Features/Products/data/repositories/product_repository.dart';

final httpClient =
    Dio(BaseOptions(baseUrl: "http://expertdevelopers.ir/api/v1/"));
final productRepository =
    ProductRepositoryImp(ProductRemoteDataSource(httpClient: httpClient));

class ProductRepositoryImp implements IProductRepository {
  final IProductDataSource dataSource;

  ProductRepositoryImp(this.dataSource);
  @override
  Future<List<ProductEntity>> getProducts(int sort) =>
      dataSource.getProducts(sort);

  @override
  Future<List<ProductEntity>> getProductsBySearch(String searchTerm) =>
      dataSource.getProductsBySearch(searchTerm);
}
