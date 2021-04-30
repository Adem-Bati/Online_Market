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
        "/": (context) => Sepetim_Ekran(),
      },
    );
  }
}

class Sepetim_Ekran extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Sepetim"),
        ),
        body: buildBody());
  }

  Widget buildBody() {

    return Scaffold(
      body: Center(
        child: new Container(
          padding: new EdgeInsets.all(50.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                'Sepetinizde Ürün Bulunmamaktadır.',
                style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,),
              ),
            ],
          ),
        ),
      ),
    );
  }
}