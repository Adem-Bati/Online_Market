import 'package:flutter/material.dart';
import 'package:orjinal/Listeler/Kredi_Kartlari.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: "/",
      routes: {
        "/": (context) => Kredi_Kartlarim_Ekran(),
      },
    );
  }
}

class Kredi_Kartlarim_Ekran extends StatelessWidget {
  List<kredi_Kartlari> tables = [
    kredi_Kartlari.withId(1,"Adem Batı", 5555555555555555,555,"05/55"),
    kredi_Kartlari.withId(2,"Adem Batı", 5555555555555555,555,"05/55"),
  ];
  @override

  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Adreslerim"),
        ),
        body:buildBody());

  }

  Widget buildBody() {
    return  Column(
      children: [
        Expanded(
          child: ListView.builder(
              itemCount: tables.length,
              itemBuilder: (BuildContext,int index){
                return ListTile(
                  title: Text(tables[index].isim_Soyisim),
                  subtitle: Text(tables[index].kart_No.toString() +"\n"+ tables[index].cvv.toString() +"\n"+ tables[index].tarih),
                  leading: FlutterLogo(),
                );
              }),
        )
      ],
    );
  }
}