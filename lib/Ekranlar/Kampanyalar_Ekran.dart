import 'package:flutter/material.dart';
import 'package:orjinal/Listeler/Kampanyalar.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: "/",
      routes: {
        "/": (context) => Kampanyalar_Ekran(),
      },
    );
  }
}

class Kampanyalar_Ekran extends StatelessWidget {
  List<kampanyalar> tables = [
    kampanyalar.withId(1,"Resimler/Kampanya_Resim_1.PNG","aaa ürünlerinde %55 indirim"),
  ];
  @override

  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Adreslerim"),
        ),
        body:buildBody(context));

  }

  Widget buildBody( context) {
    return ListView.separated(
        separatorBuilder: (BuildContext context, int index) => const Divider(),
        itemCount: tables.length,
        itemBuilder: (context, index) {
          return Card(
              child: ListTile(
                onTap: () {
                  Scaffold.of(context).showSnackBar(SnackBar(
                    content: Text(tables[index].aciklama + " tıklandı!"),
                  ));
                },
                  title: Text(tables[index].aciklama),
                  leading: CircleAvatar(
                      backgroundImage: NetworkImage(
                  tables[index].resim_yolu)),
                trailing: Icon(Icons.chevron_right),
              )
          );
        });
  }
}