import 'package:flutter/material.dart';

import '../../../core/assets/assets.gen.dart';
import '../../../core/components/menu_button.dart';
import '../../../core/components/spaces.dart';
import '../models/order_model.dart';
import '../widgets/order_card.dart';
import '../widgets/payment_cash_dialog.dart';
import '../widgets/payment_qris_dialog.dart';
import '../widgets/process_button.dart';

class OrdersPage extends StatelessWidget {
  const OrdersPage({super.key});

  @override
  Widget build(BuildContext context) {
    final indexValue = ValueNotifier(0);
    const paddingHorizontal = EdgeInsets.symmetric(horizontal: 16.0);
    final List<OrderModel> orders = [
      OrderModel(
        image: Assets.images.f1.path,
        name: 'Nutty Oat Latte',
        price: 39000,
      ),
      OrderModel(
        image: Assets.images.f2.path,
        name: 'Iced Latte',
        price: 24000,
      ),
    ];

    int calculateTotalPrice(List<OrderModel> orders) {
      int totalPrice = 0;
      for (final order in orders) {
        totalPrice += order.price;
      }
      return totalPrice;
    }

    return Scaffold(
      appBar: AppBar(
        title: const Text('Order Detail'),
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: () {},
            icon: Assets.icons.delete.svg(),
          ),
        ],
      ),
      body: StatefulBuilder(
        builder: (context, setState) => ListView.separated(
          padding: const EdgeInsets.symmetric(vertical: 16.0),
          itemCount: orders.length,
          separatorBuilder: (context, index) => const SpaceHeight(20.0),
          itemBuilder: (context, index) => OrderCard(
            padding: paddingHorizontal,
            data: orders[index],
            onDeleteTap: () {
              orders.removeAt(index);
              setState(() {});
            },
          ),
        ),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            ValueListenableBuilder(
              valueListenable: indexValue,
              builder: (context, value, _) => Row(
                children: [
                  const SpaceWidth(10.0),
                  MenuButton(
                    iconPath: Assets.icons.cash.path,
                    label: 'Tunai',
                    isActive: value == 1,
                    onPressed: () => indexValue.value = 1,
                  ),
                  const SpaceWidth(10.0),
                  MenuButton(
                    iconPath: Assets.icons.qrCode.path,
                    label: 'QRIS',
                    isActive: value == 2,
                    onPressed: () => indexValue.value = 2,
                  ),
                  const SpaceWidth(10.0),
                ],
              ),
            ),
            const SpaceHeight(20.0),
            ProcessButton(
              price: 123000,
              onPressed: () async {
                if (indexValue.value == 0) {
                } else if (indexValue.value == 1) {
                  showDialog(
                    context: context,
                    builder: (context) => PaymentCashDialog(
                      price: calculateTotalPrice(orders),
                    ),
                  );
                } else if (indexValue.value == 2) {
                  showDialog(
                    context: context,
                    barrierDismissible: false,
                    builder: (context) => const PaymentQrisDialog(),
                  );
                }
              },
            ),
          ],
        ),
      ),
    );
  }
}
