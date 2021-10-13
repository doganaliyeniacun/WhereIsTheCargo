class CargoModel {
  late String url;
  late String iconUrl;
  late String cargoName;

  CargoModel({
    required this.url,
    this.iconUrl = '',
    this.cargoName = '',
  });
}