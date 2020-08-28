import 'dart:convert';
import 'package:flutter/services.dart';
import 'package:jsonDemo_day5/models/accountModel.dart';

class AccountService {
  static Future<String> _loadAssetsData() async {
    return await rootBundle.loadString("assets/account.json");
  }

  static Future<Account> getAccount() async {
    var jsondata = await _loadAssetsData();
    print((jsondata));

    var parsedData = jsonDecode(jsondata);
    print(parsedData);

    Account account = Account.fromJson(parsedData);
    return account;
  }
}
