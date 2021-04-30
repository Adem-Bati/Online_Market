import 'package:flutter/material.dart';
import 'package:orjinal/Listeler/Kullanicilar.dart';
import 'package:orjinal/main.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: "/",
      routes: {
        "/": (context) => Giris_Ekran(),
        }
    );
      }
  }

class Giris_Ekran extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
    appBar: AppBar(title: Text("Giriş Ekranı",
      style: TextStyle(fontSize: 20.0, color: Colors.white),
    ),),
        body: _giris_Ekran(context),
    );
  }
}
  Widget _giris_Ekran(BuildContext context) {
    void _showAlertDialog(String message) async {
      showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: Text(message),
            actions: <Widget>[
              FlatButton(
                child: Text('Tamam'),
                onPressed: () {
                  Navigator.of(context).pop();
                },
              ),
            ],
          );
        },
      );
    }

    List<Kullanicilar> kullanicilar_Tablosu = [
      Kullanicilar.withId(1, "adem", "batı", "55/55/5555", "ademmail", 123),
    ];
    String e_Posta_Kontrol;
    String sifre_Kontrol;
    final e_Posta_text = TextField(
      obscureText: false,
      onChanged: (String value){
        e_Posta_Kontrol = value;
      },

      decoration: InputDecoration(
          contentPadding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
          hintText: "Kullanıcı adı",
          border:
          OutlineInputBorder(borderRadius: BorderRadius.circular(32.0))
      ),
    );

    final sifre_text = TextField(
      obscureText: true,
      onChanged: (String value){
        sifre_Kontrol = value;
      },
      decoration: InputDecoration(
          contentPadding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
          hintText: "Parola",
          border:
          OutlineInputBorder(borderRadius: BorderRadius.circular(32.0))
      ),
    );


    final loginButton = Material(
      elevation: 5.0,
      borderRadius: BorderRadius.circular(30.0),
      color: Colors.brown[300],
      child: MaterialButton(
        minWidth: MediaQuery
            .of(context)
            .size
            .width,
        padding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
        onPressed: () {
          if(e_Posta_Kontrol == kullanicilar_Tablosu[0].e_posta && sifre_Kontrol == kullanicilar_Tablosu[0].sifre.toString()){
            e_Posta_Kontrol = "";
            sifre_Kontrol = "";
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => MyHomePage()),
            );
          }
          else
            _showAlertDialog("E-Posta veya Şifre Hatalı");
        },


        child: Text("Giriş yap",
          textAlign: TextAlign.center,
          style: TextStyle(color: Colors.white, fontStyle: FontStyle.normal),),
      ),
    );


    final registerButton = Material(
      elevation: 5.0,
      borderRadius: BorderRadius.circular(30.0),
      color: Colors.brown[300],
      child: MaterialButton(
        minWidth: MediaQuery
            .of(context)
            .size
            .width,
        padding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
        onPressed: () {

        },

        child: Text("Kayıt ol",
          textAlign: TextAlign.center,
          style: TextStyle(color: Colors.white, fontStyle: FontStyle.normal),),
      ),
    );

    return Center(
      child: Container(
        child: Padding(
          padding: const EdgeInsets.all(36.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[

              SizedBox(height: 10.0),
              e_Posta_text,

              SizedBox(height: 10.0),
              sifre_text,

              SizedBox(height: 15.0),
              loginButton,

              SizedBox(height: 15.0),
              registerButton,
            ],
          ),
        ),
      ),
    );
  }
