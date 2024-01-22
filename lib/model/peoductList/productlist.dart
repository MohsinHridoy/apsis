class ProductList {
  final String title;
  final String productId;
  int quantity;
  final String stknmbr;
  final int unitprice;
  final String image;
  double productAmount;
  bool is_Added;

  ProductList({
    required this.title,
    required this.productId,
    required this.quantity,
    required this.stknmbr,
    required this.unitprice,
    required this.image,
    required this.productAmount,
    required this.is_Added,
  });

  Map<String, dynamic> toJson() {
    return {
      'title': title,
      'productId': productId,
      'quantity': quantity,
      'stknmbr': stknmbr,
      'unitprice': unitprice,
      'image': image,
      'productAmount': productAmount,
      'is_Added': is_Added,
    };
  }

  factory ProductList.fromJson(Map<String, dynamic> json) {
    return ProductList(
      title: json['title'],
      productId: json['productId'],
      quantity: json['quantity'],
      stknmbr: json['stknmbr'],
      unitprice: json['unitprice'],
      image: json['image'],
      productAmount: json['productAmount'],
      is_Added: json['is_Added'],
    );
  }
}
