

import 'package:fic11_starter_pos/core/extensions/int_ext.dart';

class OrderModel {
  final String image;
  final String name;
  final int price;
  int quantity;

  OrderModel({
    required this.image,
    required this.name,
    required this.price,
    this.quantity = 1,
  });

  String get priceFormat => price.currencyFormatRp;
}
