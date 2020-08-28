import 'package:flutter/material.dart';
import 'package:jsonDemo_day5/pages/home.dart';
import 'package:jsonDemo_day5/services/accountService.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: Home());
  }
}
