import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          leading: Icon(
            Icons.add_business_rounded,
            color: Colors.white,
          ),
          actions: [
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.settings_rounded),
            ),
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.exit_to_app_rounded),
            )
          ],
          flexibleSpace: Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [Color(0xff845EC2), Color(0xffFF9671)],
                begin: FractionalOffset.topLeft,
                end: FractionalOffset.bottomRight,
              ),
              image: DecorationImage(
                  image: AssetImage('assets/pattern.png'),
                  fit: BoxFit.none,
                  repeat: ImageRepeat.repeat),
            ),
          ),
          title: Text('Appbar Gradasi'),
        ),
      ),
    );
  }
}
