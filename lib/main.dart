import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:orjinal/Ekranlar/Ara_Ekran.dart';
import 'package:orjinal/Ekranlar/Diger_Ekran.dart';
import 'package:orjinal/Ekranlar/Kampanyalar_Ekran.dart';
import 'package:orjinal/Ekranlar/Sepetim_Ekran.dart';
import 'package:orjinal/Ekranlar/Siparis_Ekran.dart';

void main() {
  runApp(MyApp());
}



class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: "/",
      routes: {
        "/": (context) => MyHomePage(),
      },
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}


class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {
    return CupertinoTabScaffold(
      tabBar: CupertinoTabBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.store),
            title: Text('Sipariş'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            title: Text('Ara'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_basket),
            title: Text('Sepetim'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.whatshot_rounded),
            title: Text('Kampanyalar'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.line_weight),
            title: Text('Diğer'),
          ),
        ],
      ),
      tabBuilder: (context, index) {
        switch (index) {
          case 0:
            return CupertinoTabView(builder: (context) {
              return CupertinoPageScaffold(
                child: Siparis_Ekran(),
              );
            });
          case 1:
            return CupertinoTabView(builder: (context) {
              return CupertinoPageScaffold(
                child: Ara_Ekran(),
              );
            });
          case 2:
            return CupertinoTabView(builder: (context) {
              return CupertinoPageScaffold(
                child: Sepetim_Ekran(),
              );
            });
          case 3:
            return CupertinoTabView(builder: (context) {
              return CupertinoPageScaffold(
                child: Kampanyalar_Ekran(),
              );
            });
          case 4:
            return CupertinoTabView(builder: (context) {
              return CupertinoPageScaffold(
                child: Diger_Ekran(),
              );
            });

          default: return CupertinoTabView(builder: (context) {
            return CupertinoPageScaffold(
              child: Ara_Ekran(),
            );
          });
        }
      },
    );
  }
}
