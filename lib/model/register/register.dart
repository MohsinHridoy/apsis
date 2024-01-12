class User {
  String enterpriseName;
  String enterpriseType;
  String address;
  String mobileNumber;
  String password;

  User({
    required this.enterpriseName,
    required this.enterpriseType,
    required this.address,
    required this.mobileNumber,
    required this.password,
  });

  // Add this method to convert User to JSON
  Map<String, dynamic> toJson() {
    return {
      'username': enterpriseName,
      'enterpriseType': enterpriseType,
      'address': address,
      'mobileNumber': mobileNumber,
      'password': password,
    };
  }
}
