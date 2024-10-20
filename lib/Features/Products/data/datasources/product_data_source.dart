import 'package:nike_ecommerce_flutter/Features/Products/data/entity/product_entity.dart';

abstract class IProductDataSource {
  Future<List<ProductEntity>> getProducts(int sort);
  Future<List<ProductEntity>> getProductsBySearch(String searchTerm);
}
