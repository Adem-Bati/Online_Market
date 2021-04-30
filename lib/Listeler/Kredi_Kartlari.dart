class kredi_Kartlari{
  int id;
  String isim_Soyisim;
  int kart_No;
  int cvv;
  String tarih;
  kredi_Kartlari(int id, String isim_Soyisim, int kart_No, int cvv, String tarih){
    this.isim_Soyisim=isim_Soyisim;
    this.kart_No=kart_No;
    this.cvv=cvv;
    this.tarih=tarih;
  }
  kredi_Kartlari.withId ( int id, String isim_Soyisim, int kart_No, int cvv, String tarih){
    this.id=id;
    this.isim_Soyisim=isim_Soyisim;
    this.kart_No=kart_No;
    this.cvv=cvv;
    this.tarih=tarih;
  }
}