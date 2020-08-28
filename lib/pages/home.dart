import 'package:flutter/material.dart';
import 'package:jsonDemo_day5/models/accountModel.dart';
import 'package:jsonDemo_day5/models/addressModel.dart';
import 'package:jsonDemo_day5/pages/address.dart';
import 'package:jsonDemo_day5/services/accountService.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  Future<Account> account;
  @override
  void initState() {
    this.account = AccountService.getAccount();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Json Demo"),
        ),
        drawer: Drawer(
          child: ListView(
            children: <Widget>[
              FutureBuilder(
                  future: account,
                  builder: (context, snapshot) {
                    var account = snapshot.data;
                    if (snapshot.hasData) {
                      return UserAccountsDrawerHeader(
                          accountName: Text(snapshot.data.name),
                          accountEmail: Text(snapshot.data.email),
                          currentAccountPicture: CircleAvatar(
                            backgroundImage: NetworkImage(
                                "https://images.unsplash.com/photo-1469854523086-cc02fe5d8800?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=60"),
                          ));
                    }
                  }),
              ListTile(
                onTap: () {
                  Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => AddressPage(),
                  ));
                },
                leading: Icon(Icons.home),
                title: Text("Address"),
                trailing: Icon(Icons.arrow_forward_ios),
              )
            ],
          ),
        ));
  }
}
