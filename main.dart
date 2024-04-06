import 'dart:io';


// main class
void main(){
  double anapara = 0;
  print("Ana Para: $anapara");
  

  while (true){
    print("\nYAPMAK İSTEDİĞİNİZ İŞLEMİ SEÇİNİZ");
    print("1-PARA YATIRMA");
    print("2-PARA ÇEKME");
    print("3-ÇIKIŞ");

    int islem = int.parse(stdin.readLineSync()!);

    if (islem == 1){
      var yatirilan = ParaYatir();
      anapara += yatirilan;
      print("Bakiyeniz :$anapara");
    }else if (islem == 2){
      var cekilen = ParaCek(anapara);
      anapara -= cekilen;
      print("Bakiyeniz :$anapara");
    }else if(islem==3){
      print("Kart İadesi Çıkış Yapılıyor...");
      break;
      }
  }// while
}// main

// para yatirma
double ParaYatir(){
  print("Yatırılacak miktarı yazınız :");

  double para = double.parse(stdin.readLineSync()!);

  if (para > 0){
    print("İşlem Başarılı");
    return para;
  }else{
    print("İşlem Başarısız");
    return 0.0;
  }
}

// para cekme
double ParaCek(anapara){
  print("Çekilecek miktarı yazınız :");
  double para = double.parse(stdin.readLineSync()!);

  if (para > 0 && para < anapara){
    print("İşlem Başarılı");
    return para;
  }else{
    print("Bakiye Yetersiz");
    return 0.0;
  }
}