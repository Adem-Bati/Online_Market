class Adresler{
  int id;
  String Adi;
  String il_ilce;
  String Adres;
  String status;
  Adresler(int id, String Adi, String il_ilce,String Adres){
    this.Adi=Adi;
    this.il_ilce=il_ilce;
    this.Adres=Adres;

  }
  Adresler.withId ( int id, String Adi, String il_ilce,String Adres){
    this.id=id;
    this.Adi=Adi;
    this.il_ilce=il_ilce;
    this.Adres=Adres;
  }
}