import 'package:flutter/cupertino.dart';

class kampanyalar{
  int id;
  String resim_yolu;
  String aciklama;

  kampanyalar(int id, String resim_yolu, String aciklama){
    this.resim_yolu=resim_yolu;
    this.aciklama=aciklama;

  }
  kampanyalar.withId (int id, String resim_yolu, String aciklama){
    this.id=id;
    this.resim_yolu=resim_yolu;
    this.aciklama=aciklama;
  }
}