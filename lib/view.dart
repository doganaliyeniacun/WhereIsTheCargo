// ignore_for_file: prefer_const_constructors, avoid_unnecessary_containers, unused_local_variable, use_key_in_widget_constructors

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'compenents/calculate_cargo.dart';
import 'compenents/where_cargo.dart';
import 'model_view.dart';

class WebViewExample extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var viewModel = Get.put(CargoViewModel());
    SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
    PageController controller =
        PageController(initialPage: viewModel.index.value);

    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home: Obx(
        () => Scaffold(
          appBar: myAppBar(viewModel.index),
          body: SafeArea(
            child: Column(
              children: [
                Expanded(
                  flex: 10,
                  child: viewModel.connectivityStatus.value ==
                          ConnectivityStatus.IDLE
                      ? indexedStack(viewModel.index)
                      : Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          // ignore: prefer_const_literals_to_create_immutables
                          children: [
                            const Text(
                                "Lütfen internet bağlantınızı kontrol ediniz."),
                            const SizedBox(height: 5),
                            const CircularProgressIndicator(),
                          ],
                        ),
                ),
                Expanded(
                  child: myBottom(viewModel.index),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

  Container myBottom(RxInt index) {
    return Container(
      decoration: BoxDecoration(
        color: index.value == 0 ? Colors.blue : Colors.green,
        borderRadius: BorderRadius.vertical(
          top: Radius.circular(20),
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
            child: GestureDetector(
              onTap: () => index.value = 0,
              child: Container(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  // ignore: prefer_const_literals_to_create_immutables
                  children: [
                    Icon(
                      Icons.search,
                      color: index.value == 0 ? Colors.white : Colors.black,
                    ),
                    Center(
                      child: Text(
                        "Kargom Nerede?",
                        style: TextStyle(
                          color: index.value == 0 ? Colors.white : Colors.black,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Expanded(
            child: GestureDetector(
              onTap: () => index.value = 1,
              child: Container(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  // ignore: prefer_const_literals_to_create_immutables
                  children: [
                    Icon(
                      Icons.calculate_outlined,
                      color: index.value == 1 ? Colors.white : Colors.black,
                    ),
                    Center(
                      child: Text(
                        "Ücret Hesapla",
                        style: TextStyle(
                          color: index.value == 1 ? Colors.white : Colors.black,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }

  IndexedStack indexedStack(RxInt index) {
    return IndexedStack(
      index: index.value,
      // ignore: prefer_const_literals_to_create_immutables
      children: [
        WhereIsTheCargo(),
        CalculateCargo(),
      ],
    );
  }

  AppBar myAppBar(RxInt index) {
    return AppBar(
      title: Text(
        index.value == 0 ? "Kargom nerede?" : "Ücret Hesapla",
      ),
      backgroundColor: index.value == 0 ? Colors.blue : Colors.green,
    );
  }
}
