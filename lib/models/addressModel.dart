class Address {
  String city;
  String zip;
  String state;
  String township;
  List<String> streets;

  Address({this.city, this.zip, this.state, this.township, this.streets});

  factory Address.fromJson(Map<String, dynamic> json) {
    var streetFromJson = json['streets'];
    List<String> streetList = List<String>.from(streetFromJson);
    return Address(
        city: json['city'],
        zip: json['zip'],
        state: json['state'],
        township: json['township'],
        streets: streetList);
  }
}
