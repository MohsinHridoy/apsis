


class CustomerListDetails {
  final String name;
  final String role;
  final double amount;
  final String creditStatus;
  final String profileImage;
  final String? phoneNumber;
  final String? address;


  CustomerListDetails({
    required this.name,
    required this.role,
    required this.amount,
    required this.creditStatus,
    required this.profileImage,
     this.phoneNumber,
     this.address,
  });
}
