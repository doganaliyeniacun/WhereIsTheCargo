// ignore_for_file: use_key_in_widget_constructors, must_be_immutable

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_web_view_example/compenents/cargo_viewer.dart';
import 'package:flutter_web_view_example/model.dart';
import 'package:flutter_web_view_example/model_view.dart';
import 'package:get/get.dart';

class CargoButton extends StatelessWidget {
  late CargoModel cargoModel;
  CargoViewModel viewModel = Get.find();

  CargoButton({required this.cargoModel});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Container(
        padding: const EdgeInsets.all(10),
        height: Get.height * 0.15,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          border: Border.all(
            color: viewModel.index.value == 0 ? Colors.blue : Colors.green,
          ),
        ),
        child: CachedNetworkImage(
          fit: BoxFit.fill,
          imageUrl: cargoModel.iconUrl,
          placeholder: (context, url) => const CircularProgressIndicator(),
          errorWidget: (context, url, error) => const Icon(Icons.error),
        ),
      ),
      onTap: () => Get.to(
        WhereIsCargo(cargoModel: cargoModel),
        duration: const Duration(
          milliseconds: 300,
        ),
      ),
    );
  }
}
