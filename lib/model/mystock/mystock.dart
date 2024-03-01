

class MyStockData11 {
  final String title;
  final String productId;
  final int quantity;
  final String stknmbr;
  final int unitprice;
  final String  image;


  MyStockData11({required this.title, required this.productId,required this.quantity,required this.stknmbr,required this.unitprice,required this.image});
}




class MyStockData {
  final String stkId;
  final String stkTitle;
  final String stkQuantity;
  final String stkCompanyName;
  final int quantity;
  final String stknmbr;
  final int unitprice;
  final String image;
  bool is_Added;


  MyStockData({
    required this.stkId,
    required this.stkTitle,
    required this.stkQuantity,
    required this.stkCompanyName,
    required this.quantity,
    required this.stknmbr,
    required this.unitprice,
    required this.image,
    required this.is_Added,

  });

  factory MyStockData.fromJson(Map<String, dynamic> json) {
    return MyStockData(
      stkId: json['stkId'],
      stkTitle: json['stkTitle'],
      stkQuantity: json['stkQuantity'],
      stkCompanyName: json['stkCompanyName'],
      quantity: json['quantity'],
      stknmbr: json['stknmbr'],
      unitprice: json['unitprice'],
      image: json['image'],
      is_Added: json['is_Added'],


    );
  }

  Map<String, dynamic> toJson() {
    return {
      'stkId': stkId,
      'stkTitle': stkTitle,
      'stkQuantity': stkQuantity,
      'stkCompanyName': stkCompanyName,
      'quantity': quantity,
      'stknmbr': stknmbr,
      'unitprice': unitprice,
      'image': image,
      'is_Added': is_Added,

    };
  }
}