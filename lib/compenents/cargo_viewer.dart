import 'package:flutter/material.dart';
import 'package:flutter_web_view_example/model.dart';
import 'package:flutter_web_view_example/model_view.dart';
import 'package:get/get.dart';
import 'package:webview_flutter/webview_flutter.dart';

class WhereIsCargo extends StatelessWidget {
  late CargoModel cargoModel;

  WhereIsCargo({
    required this.cargoModel,
  });

  CargoViewModel cargoViewModel = Get.find();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(cargoModel.cargoName),
        backgroundColor:
            cargoViewModel.index.value == 0 ? Colors.blue : Colors.green,
      ),
      body: WebView(
        initialUrl: cargoModel.url,
        javascriptMode: JavascriptMode.unrestricted,
      ),
    );
  }
}
