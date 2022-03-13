import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  TextEditingController controller = TextEditingController(text: 'Nilai Awal');

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text('Textfield Decoration'),
        ),
        body: Container(
          margin: EdgeInsets.all(20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              TextField(
                decoration: InputDecoration(
                  icon: Icon(Icons.widgets),
                  prefixIcon: Icon(Icons.person),
                  fillColor: Colors.lightBlue[50],
                  filled: true,
                  prefixText: 'Nama : ',
                  labelText: 'Nama Lengkap',
                  hintText: 'nama lengkapnya yha',
                  hintStyle: TextStyle(
                    fontSize: 12,
                  ),
                  prefixStyle: TextStyle(
                      color: Colors.blue, fontWeight: FontWeight.w700),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  // suffix: Container(
                  //   height: 5,
                  //   width: 5,
                  //   color: Colors.red,
                  // ),
                  // prefix: Container(
                  //   height: 5,
                  //   width: 5,
                  //   color: Colors.red,
                  // ),
                ),
                maxLength: 20,
                // obscureText: true,
                onChanged: (value) {
                  setState(() {});
                },
                controller: controller,
              ),
              Text(controller.text)
            ],
          ),
        ),
      ),
    );
  }
}
