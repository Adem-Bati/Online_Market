import 'package:flutter/material.dart';
import 'package:orjinal/Listeler/Adresler.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: "/",
      routes: {
        "/": (context) => Adreslerim_Ekran(),
      },
    );
  }
}

class Adreslerim_Ekran extends StatelessWidget {
  List<Adresler> adres_Tablo = [
    Adresler.withId(1,"Ev", "Xsehri/yilçesi","aMahalle. \n bCadde \n .bina"),
    Adresler.withId(2,"Ev", "Xsehri/yilçesi","aMahalle. \n bCadde \n .bina"),
  ];
  @override

  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Adreslerim"),
        ),
        body: _adres());

  }

  Widget _adres() {
    return  Column(
      children: [
        Expanded(
          child: ListView.builder(
              itemCount: adres_Tablo.length,
              itemBuilder: (BuildContext,int index){
                return ListTile(
                  title: Text(adres_Tablo[index].Adi +"\n"+ adres_Tablo[index].il_ilce),
                  subtitle: Text( adres_Tablo[index].Adres),
                  leading: FlutterLogo(),
                );
              }),
        )
      ],
    );
  }
}