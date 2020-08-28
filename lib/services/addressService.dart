import 'dart:convert';

import 'package:flutter/services.dart';
import 'package:jsonDemo_day5/models/addressModel.dart';

class AddressService {
  static Future<String> _loadAssetsData() async {
    return await rootBundle.loadString("assets/address.json");
  }

  static Future<Address> getAddress() async {
    var jsondata = await _loadAssetsData();
    print((jsondata));

    var parsedData = jsonDecode(jsondata);
    print(parsedData);

    Address account = Address.fromJson(parsedData);
    return account;
  }
}
