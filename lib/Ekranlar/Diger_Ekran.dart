
import 'package:flutter/material.dart';
import 'package:orjinal/Ekranlar/Adreslerim_Ekran.dart';
import 'package:orjinal/Ekranlar/Bilgilerim_Ekran.dart';
import 'package:orjinal/Ekranlar/Giris_Ekran.dart';
import 'package:orjinal/Ekranlar/Kredi_Kartlarim_Ekran.dart';
import 'package:orjinal/Ekranlar/Uygulama_Hakkinda_Ekran.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: "/",
      routes: {
        "/": (context) => Diger_Ekran(),
      },
    );
  }
}

class Diger_Ekran extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Diğer"),
        ),
        body: _diger(context));
  }

  Widget _diger(context) {
    return Column(
      children: [
          FlatButton(
            onPressed: () => {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Bilgilerim_Ekran()),
                //ad.text = "ad",
              ),

            },
            color: Colors.white,
            padding: EdgeInsets.all(10.0),
            height: 100,
            child: Row(
              children: <Widget>[Icon(Icons.perm_identity), Text("Bilgilerim")],
            ),
          ),
        FlatButton(
            onPressed: () => {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Adreslerim_Ekran()),
              ),
            },
            color: Colors.white,
            padding: EdgeInsets.all(10.0),
            height: 100,
            child: Row(
              children: <Widget>[Icon(Icons.add_location), Text("Adreslerim")],
            ),
          ),
        FlatButton(
            onPressed: () => {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Kredi_Kartlarim_Ekran()),
              ),
            },
            color: Colors.white,
            padding: EdgeInsets.all(10.0),
            height: 100,
            child: Row(
              children: <Widget>[Icon(Icons.credit_card), Text("Kredi Kartlarım")],
            ),
          ),
        FlatButton(
            onPressed: () => {
            Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => Uygulama_Hakkinda_Ekran()),
            ),
            },
            color: Colors.white,
            padding: EdgeInsets.all(10.0),
            height: 100,
            child: Row(
              children: <Widget>[Icon(Icons.info), Text("Uygulama Hakkında",)],
            ),
          ),
        Container(
          padding: new EdgeInsets.all(50),
          child:RaisedButton(
            onPressed: () => {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Giris_Ekran()),
              ),
            },
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(50),
            ),
            padding:  new EdgeInsets.all(10.0),
            color: Colors.grey,
            child:
              Text("Güvenli Çıkış", style: new TextStyle(fontSize: 20, fontWeight: FontWeight.bold )),
          ),
        )
      ],
    );
  }
}
