import 'package:flutter/material.dart';
import 'package:jsonDemo_day5/models/addressModel.dart';
import 'package:jsonDemo_day5/services/addressService.dart';

class AddressPage extends StatefulWidget {
  @override
  _AddressPageState createState() => _AddressPageState();
}

class _AddressPageState extends State<AddressPage> {
  Future<Address> address;
  @override
  void initState() {
    this.address = AddressService.getAddress();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Address Page"),
      ),
      body: Container(
        child: Center(
          child: FutureBuilder(
              future: address,
              builder: (context, snapshot) {
                Address address = snapshot.data;
                if (snapshot.hasData) {
                  return Column(
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.all(8.8),
                        child: Text(address.city),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.8),
                        child: Text(address.zip),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.8),
                        child: Text(address.state),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.8),
                        child: Text(address.township),
                      ),
                      Container(
                          height: 200,
                          color: Colors.red,
                          child: ListView.builder(
                            itemCount: address.streets.length,
                            itemBuilder: (context, index) {
                              return Text(address.streets[index]);
                            },
                          ))
                    ],
                  );
                }
                return CircularProgressIndicator();
              }),
        ),
      ),
    );
  }
}
