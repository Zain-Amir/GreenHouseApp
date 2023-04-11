import 'package:green_house_app/resources/app_images.dart';

class PaymentTypeModel {
  String name;
  String imagePath;
  String price;
  PaymentTypeModel(
      {required this.name, required this.imagePath, required this.price});
}

var paymentTypeContent = [
  PaymentTypeModel(
      name: 'GreenHouse Wallet', imagePath: AppImages.walletIcon, price: '500'),
  PaymentTypeModel(
      name: 'Paypal', imagePath: AppImages.paypalIcon, price: '500'),
  PaymentTypeModel(
      name: 'Apple Pay', imagePath: AppImages.applePayIcon, price: '500'),
];
