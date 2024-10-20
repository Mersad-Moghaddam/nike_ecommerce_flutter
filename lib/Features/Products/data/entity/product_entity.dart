class ProductEntity {
  final int id;
  final String title;
  final int price;
  final int previousPrice;
  final int discount;
  final String image;

  ProductEntity.fromJson(Map<String, dynamic> json)
      : id = json['id'],
        title = json['title'],
        price = json['price'],
        previousPrice = json['previous_price'],
        discount = json['discount'],
        image = json['image'];
}
