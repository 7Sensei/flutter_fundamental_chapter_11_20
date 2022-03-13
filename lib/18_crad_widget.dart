import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.green,
        body: Container(
          margin: EdgeInsets.all(10),
          child: ListView(
            children: [
              newCard(Icons.account_balance_wallet, 'Wallet'),
              newCard(Icons.account_balance_rounded, 'Bank')
            ],
          ),
        ),
      ),
    );
  }

  Card newCard(IconData iconData, String text) {
    return Card(
      elevation: 5,
      child: Row(
        children: [
          Container(
              margin: EdgeInsets.all(5),
              child: Icon(iconData, color: Colors.green)),
          Text(text),
        ],
      ),
    );
  }
}
