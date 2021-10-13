import 'package:flutter/material.dart';

import '../compenents/cargo_button.dart';
import '../model.dart';
import '../services.dart';

class WhereIsTheCargo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      child: GridView.builder(
          itemCount: cargoList.length,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            mainAxisSpacing: 10,
            crossAxisSpacing: 10,
            childAspectRatio: 1.14,
          ),
          itemBuilder: (context, index) {
            var myUrls = cargoList[index];
            return CargoButton(
              cargoModel: CargoModel(
                url: myUrls.url,
                iconUrl: myUrls.iconUrl,
                cargoName: myUrls.cargoName,
              ),
            );
          }),
    );
  }
}
