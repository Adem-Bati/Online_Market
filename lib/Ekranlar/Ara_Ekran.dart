import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: "/",
      routes: {
        "/": (context) => Ara_Ekran(),
      },
    );
  }
}

class Ara_Ekran extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
      return  Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.lightGreenAccent,
            title:
               TextField(
              style: TextStyle(fontSize: 15),
              decoration: InputDecoration(
                hintText: "Ara",
                border:
                    OutlineInputBorder(borderRadius: BorderRadius.circular(50), gapPadding: 50),
                prefixIcon: Icon(Icons.search),
              ),
            ),
          ),
          body: Container());
  }
}
