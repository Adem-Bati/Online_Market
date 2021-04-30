import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:orjinal/Listeler/Kullanicilar.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: "/",
      routes: {
        "/": (context) => Bilgilerim_Ekran(),
      },
    );
  }
}

class Bilgilerim_Ekran extends StatelessWidget {
  List<Kullanicilar> tables = [
    Kullanicilar.withId(1,"adem","batı","55/55/5555","adembati@mail",123),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Uygulama Hakkında"),
        ),
        body: _bilgilerim(context));
  }

  Widget _bilgilerim(context) {
    return Scaffold(

        body: new Container(
            padding: new EdgeInsets.all(10.0),

            child: new Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget>[
                  new Card(
                      color: Colors.white,
                      child: new Container(
                          padding: new EdgeInsets.all(10.0),
                          child: new Column(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                new TextField(
                                  decoration: InputDecoration(
                                    border: UnderlineInputBorder(),
                                    labelText: "Ad",
                                    hintText: tables[0].ad,
                                  ),
                                ),
                                new TextField(
                                  decoration: InputDecoration(
                                    border: UnderlineInputBorder(),
                                    labelText: "Soy Ad",
                                    hintText: tables[0].soy_Ad,
                                  ),
                                ),
                                new TextField(
                                  decoration: InputDecoration(
                                    border: UnderlineInputBorder(),
                                    labelText: "Doğum Tarihi",
                                    hintText: tables[0].dogum_Tarihi,
                                  ),
                                ),
                                new TextField(
                                  decoration: InputDecoration(
                                    border: UnderlineInputBorder(),
                                    labelText: "E-Posta",
                                    hintText: tables[0].e_posta,
                                  ),
                                ),
                              ]
                          )
                      )
                  ),

                      new Container(
                          padding: new EdgeInsets.only(top: 50.0, bottom: 50),
                          child: new Column(
                              children: <Widget>[
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
                                    children: <Widget>[Icon(Icons.lock), Text("Şifre Değiştir", style: new TextStyle(fontSize: 20, fontWeight: FontWeight.bold))],
                                  ),
                                ),
                              ]
                          ),
                      ),
                  new Container(
                    padding: new EdgeInsets.all(50),
                    child: new Column(
                        children: <Widget>[
                          new RaisedButton(
                            onPressed: () => {},
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(50.0),
                            ),
                           //height: 100,
                            color: Colors.grey,
                            child:
                             Text("Güncelle", style: new TextStyle(fontSize: 20, fontWeight: FontWeight.bold )),
                            ),
                        ]
                    ),
                  )
                ]
            )
        )
    );
  }
}