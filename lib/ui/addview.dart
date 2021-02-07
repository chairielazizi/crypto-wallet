import 'package:flutter/material.dart';

class AddView extends StatefulWidget {
  AddView({Key key}) : super(key: key);

  @override
  _AddViewState createState() => _AddViewState();
}

class _AddViewState extends State<AddView> {
  // dropdown value
  List<String> coins = [
    "bitcoin",
    "tether",
    "ethereum",
  ];
  String dropdownvalue = "bitcoin";
  TextEditingController _amountController = new TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Column(
        children: [
          DropdownButton(
            value: dropdownvalue,
            onChanged: (String value) {
              setState(() {
                dropdownvalue = value;
              });
            },
            items: coins.map<DropdownMenuItem<String>>((String value) {}),
          ),
        ],
      ),
    );
  }
}
