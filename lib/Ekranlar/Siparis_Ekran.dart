import 'dart:html';

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
        "/": (context) => Siparis_Ekran(),
      },
    );
  }
}

class Siparis_Ekran extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Sipariş"),
        ),
        body: buildBody());
  }
}

Widget buildBody() {
  return Scaffold(

      body: Row(children: <Widget>[
    SizedBox(width: 50,height: 32.0),
    Column(children: <Widget>[
      GestureDetector(
        onTap: () {},
        child: CircleAvatar(
          radius: 55.0,
          backgroundImage: ExactAssetImage('Resimler/Atistirmalik.PNG'),
        ),
      ),
      Container(
        height: 20.0,
      ),
      Text(
        'Atıştırmalık',
        style: TextStyle(fontSize: 20),
      ),
    ]),


    SizedBox(width: 50,height: 32.0),
    Column(children: <Widget>[
      GestureDetector(
        onTap: () {},
        child: CircleAvatar(
          radius: 55.0,
          backgroundImage: ExactAssetImage('Resimler/Sut_Kahvaltilik.PNG'),
        ),
      ),
      Container(
        height: 20.0,
      ),
      Text(
        'Süt & Kahvaltılık',
        style: TextStyle(fontSize: 20),
      ),
    ]),


    SizedBox(width: 50,height: 32.0),
    Column(children: <Widget>[
      GestureDetector(
        onTap: () {},
        child: CircleAvatar(
          radius: 55.0,
          backgroundImage: ExactAssetImage('Resimler/Yiyecek.PNG'),
        ),
      ),
      Container(
        height: 20.0,
      ),
      Text(
        'Yiyecek',
        style: TextStyle(fontSize: 20),
      ),
    ]),


    SizedBox(width: 50, height: 32.0),
    Column(children: <Widget>[
      GestureDetector(
        onTap: () {},
        child: CircleAvatar(
          radius: 55.0,
          backgroundImage: ExactAssetImage('Resimler/icecek.PNG'),
        ),
      ),
      Container(
        height: 20.0,
      ),
      Text(
        'İçecek',
        style: TextStyle(fontSize: 20),
      ),
    ]),
  ]));
}
