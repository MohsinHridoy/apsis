class ProductList {
  final String title;
  final String productId;
  int quantity;  // Add this line
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
    required this.is_Added
  });
}
