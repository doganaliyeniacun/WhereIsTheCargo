import 'package:flutter_web_view_example/model.dart';

List<CargoModel> cargoList = [
  CargoModel(
    url: 'https://suratkargo.com.tr/KargoTakip/',
    iconUrl:
        'https://kargotakip.org/wp-content/uploads/2021/03/surat-kargo-300x243.png',
    cargoName: 'Sürat Kargo',
  ),
  CargoModel(
    url: 'https://gonderitakip.ptt.gov.tr',
    iconUrl:
        'https://www.bikkinpanda.com/wp-content/uploads/2021/03/PTT-Kargo-Takip-Sorgulama-Nasil-Yapilir.png',
    cargoName: 'PTT Kargo',
  ),
  CargoModel(
      url: 'https://trendyolexpress.com',
      iconUrl:
          'https://nefret.org/wp-content/uploads/2021/03/trendyol-ekspress.jpg',
      cargoName: 'TrendyolExpress'),
  CargoModel(
    url: 'https://www.yurticikargo.com/tr/online-servisler/gonderi-sorgula',
    iconUrl:
        'https://kargotakiptr.com/wp-content/uploads/2018/07/yurtici_kargo.png',
    cargoName: 'Yurtiçi Kargo',
  ),
  CargoModel(
    url: 'https://www.mngkargo.com.tr/gonderitakip',
    iconUrl: 'https://www2.mngkargo.com.tr/images/logo.png',
    cargoName: 'MNG Kargo',
  ),
  CargoModel(
    url: 'https://social.araskargo.com.tr',
    iconUrl:
        'https://www.gursesgazetesi.com/images/haberler/2020/04/aras-kargo-takip-ve-sorgulama-islemleri-nasil-yapilir-aras-kargo-kargom-nerede.jpg',
    cargoName: 'ARAS Kargo',
  ),
  CargoModel(
    url: 'https://www.ups.com.tr/gonderi_takip.aspx',
    iconUrl: 'https://enyakinkargo.com/images/ups_kargo.png',
    cargoName: 'UPS Kargo',
  )
];

List<CargoModel> calculateCargoList = [
  CargoModel(
    url: 'https://suratkargo.com.tr',
    iconUrl:
        'https://kargotakip.org/wp-content/uploads/2021/03/surat-kargo-300x243.png',
    cargoName: 'Sürat Kargo',
  ),
  CargoModel(
    url:
        'https://www.ptt.gov.tr/Sayfalar/Gonderi/Gonderi.aspx#ptt_gonderi_ucreti_ogrenme',
    iconUrl:
        'https://www.bikkinpanda.com/wp-content/uploads/2021/03/PTT-Kargo-Takip-Sorgulama-Nasil-Yapilir.png',
    cargoName: 'Ptt Kargo',
  ),
  CargoModel(
    url: 'https://www.yurticikargo.com/tr/online-servisler/fiyat-hesapla',
    iconUrl:
        'https://kargotakiptr.com/wp-content/uploads/2018/07/yurtici_kargo.png',
    cargoName: 'Yurtiçi Kargo',
  ),
  CargoModel(
    url: 'https://www.mngkargo.com.tr/yurtici-hizmetler/standart-fiyat-listesi',
    iconUrl: 'https://www2.mngkargo.com.tr/images/logo.png',
    cargoName: 'MNG Kargo',
  ),
  CargoModel(
    url: 'https://araskargo.com.tr/tr/',
    iconUrl:
        'https://www.gursesgazetesi.com/images/haberler/2020/04/aras-kargo-takip-ve-sorgulama-islemleri-nasil-yapilir-aras-kargo-kargom-nerede.jpg',
    cargoName: 'Aras Kargo',
  ),
  CargoModel(
    url: 'https://www.ups.com.tr/page.aspx?pid=8',
    iconUrl: 'https://enyakinkargo.com/images/ups_kargo.png',
    cargoName: 'UPS Kargo',
  )
];
