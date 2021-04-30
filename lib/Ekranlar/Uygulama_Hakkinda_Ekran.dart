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
        "/": (context) => Uygulama_Hakkinda_Ekran(),
      },
    );
  }
}

class Uygulama_Hakkinda_Ekran extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Uygulama Hakkında"),
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
              'Bu uygulama Dr. Öğretim Üyesi Ahmet Cevahir ÇINAR tarafından yürütülen 3311456 kodlu Mobil Programlama dersi kapsamında 183311072 numaralı Adem BATI tarafından 30.04.2021 günü yapılmıştır.',
              style: TextStyle(fontSize: 12,fontWeight: FontWeight.bold,),
            ),
            FloatingActionButton(
                onPressed: () => {

            })
          ],
        ),
        ),
      ),
    );
  }
}