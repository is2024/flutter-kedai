import 'package:flutter/material.dart';

import '../../../core/assets/assets.gen.dart';
import '../../../core/components/menu_button.dart';
import '../../../core/components/search_input.dart';
import '../../../core/components/spaces.dart';
import '../models/product_category.dart';
import '../models/product_model.dart';
import '../widgets/product_card.dart';
import '../widgets/product_empty.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final searchController = TextEditingController();
  final indexValue = ValueNotifier(0);

  List<ProductModel> searchResults = [];
  final List<ProductModel> products = [
    ProductModel(
      image: Assets.images.f1.path,
      name: 'Nutty Latte',
      category: ProductCategory.drink,
      price: 39000,
      stock: 10,
    ),
    ProductModel(
      image: Assets.images.f2.path,
      name: 'Iced Latte',
      category: ProductCategory.drink,
      price: 24000,
      stock: 10,
    ),
    ProductModel(
      image: Assets.images.f3.path,
      name: 'Iced Mocha',
      category: ProductCategory.drink,
      price: 33000,
      stock: 10,
    ),
    ProductModel(
      image: Assets.images.f4.path,
      name: 'Hot Mocha',
      category: ProductCategory.drink,
      price: 33000,
      stock: 10,
    ),
  ];

  @override
  void initState() {
    searchResults = products;
    super.initState();
  }

  void onCategoryTap(int index) {
    searchController.clear();
    indexValue.value = index;
    if (index == 0) {
      searchResults = products;
    } else {
      searchResults = products
          .where((e) => e.category.index.toString().contains(index.toString()))
          .toList();
    }
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    if (products.isEmpty) {
      return const ProductEmpty();
    }
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Text(
            'Menu',
            style: TextStyle(
              fontWeight: FontWeight.bold,
            ),
          ),
          centerTitle: true,
        ),
        body: ListView(
          padding: const EdgeInsets.all(16.0),
          children: [
            SearchInput(
              controller: searchController,
              onChanged: (value) {
                indexValue.value = 0;
                searchResults = products
                    .where((e) =>
                        e.name.toLowerCase().contains(value.toLowerCase()))
                    .toList();
                setState(() {});
              },
            ),
            const SpaceHeight(20.0),
            ValueListenableBuilder(
              valueListenable: indexValue,
              builder: (context, value, _) => Row(
                children: [
                  MenuButton(
                    iconPath: Assets.icons.allCategories.path,
                    label: 'Semua',
                    isActive: value == 0,
                    onPressed: () => onCategoryTap(0),
                  ),
                  const SpaceWidth(10.0),
                  MenuButton(
                    iconPath: Assets.icons.drink.path,
                    label: 'Minuman',
                    isActive: value == 1,
                    onPressed: () => onCategoryTap(1),
                  ),
                  const SpaceWidth(10.0),
                  MenuButton(
                    iconPath: Assets.icons.food.path,
                    label: 'Makanan',
                    isActive: value == 2,
                    onPressed: () => onCategoryTap(2),
                  ),
                  const SpaceWidth(10.0),
                  MenuButton(
                    iconPath: Assets.icons.snack.path,
                    label: 'Snack',
                    isActive: value == 3,
                    onPressed: () => onCategoryTap(3),
                  ),
                ],
              ),
            ),
            const SpaceHeight(35.0),
            if (searchResults.isEmpty)
              const Padding(
                padding: EdgeInsets.only(top: 80.0),
                child: ProductEmpty(),
              )
            else
              GridView.builder(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                itemCount: searchResults.length,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  childAspectRatio: 0.65,
                  crossAxisCount: 2,
                  crossAxisSpacing: 30.0,
                  mainAxisSpacing: 30.0,
                ),
                itemBuilder: (context, index) => ProductCard(
                  data: searchResults[index],
                  onCartButton: () {},
                ),
              ),
            const SpaceHeight(30.0),
          ],
        ),
      ),
    );
  }
}
