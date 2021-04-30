class Kullanicilar{
  int id;
  String ad;
  String soy_Ad;
  String dogum_Tarihi;
  String e_posta;
  int sifre;

  Kullanicilar(int id, String ad, String soy_Ad, String dogum_Tarihi, String e_posta, int sifre){
    this.ad=ad;
    this.soy_Ad=soy_Ad;
    this.dogum_Tarihi=dogum_Tarihi;
    this.e_posta=e_posta;
    this.sifre=sifre;

  }
  Kullanicilar.withId (int id, String ad, String soy_Ad, String dogum_Tarihi, String e_posta, int sifre){
    this.id=id;
    this.ad=ad;
    this.soy_Ad=soy_Ad;
    this.dogum_Tarihi=dogum_Tarihi;
    this.e_posta=e_posta;
    this.sifre=sifre;
  }
}