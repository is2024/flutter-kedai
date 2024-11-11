
import 'package:fic11_starter_pos/core/extensions/int_ext.dart';

import 'product_category.dart';

class ProductModel {
  final String image;
  final String name;
  final ProductCategory category;
  final int price;
  final int stock;

  ProductModel({
    required this.image,
    required this.name,
    required this.category,
    required this.price,
    required this.stock,
  });

  String get priceFormat => price.currencyFormatRp;
}
