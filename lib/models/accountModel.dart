class Account {
  String name;
  String phone;
  String email;
  String imageUrl;

  Account({this.name, this.phone, this.email, this.imageUrl});

  factory Account.fromJson(Map<String, dynamic> json) {
    return Account(
        name: json['name'],
        email: json['email'],
        phone: json['phone'],
        imageUrl: json['imageUrl']);
  }
}
