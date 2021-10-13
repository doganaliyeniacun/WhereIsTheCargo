import 'dart:io';
import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:get/get.dart';
import 'package:webview_flutter/webview_flutter.dart';

// ignore: constant_identifier_names
enum ConnectivityStatus { IDLE, BUSY }

class CargoViewModel extends GetxController {
  RxInt index = 0.obs;
  Rx<ConnectivityStatus> connectivityStatus = ConnectivityStatus.BUSY.obs;

  @override
  void onInit() {
    super.onInit();
    if (Platform.isAndroid) WebView.platform = SurfaceAndroidWebView();
    listenConnectivity();
  }

  void listenConnectivity() {
    Connectivity().onConnectivityChanged.listen((event) {
      switch (event) {
        case ConnectivityResult.mobile:
        case ConnectivityResult.wifi:
        case ConnectivityResult.ethernet:
          connectivityStatus.value = ConnectivityStatus.IDLE;
          break;
        case ConnectivityResult.none:
          connectivityStatus.value = ConnectivityStatus.BUSY;
          break;
        default:
      }
    });
  }
}
