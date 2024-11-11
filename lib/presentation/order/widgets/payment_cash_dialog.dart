import 'package:fic11_starter_pos/core/extensions/build_context_ext.dart';
import 'package:fic11_starter_pos/core/extensions/int_ext.dart';
import 'package:fic11_starter_pos/core/extensions/string_ext.dart';
import 'package:flutter/material.dart';

import '../../../core/components/buttons.dart';
import '../../../core/components/custom_text_field.dart';
import '../../../core/components/spaces.dart';
import '../../../core/constants/colors.dart';
import 'payment_success_dialog.dart';

class PaymentCashDialog extends StatelessWidget {
  final int price;
  const PaymentCashDialog({super.key, required this.price});

  @override
  Widget build(BuildContext context) {
    final priceController = TextEditingController(text: price.currencyFormatRp);
    return AlertDialog(
      scrollable: true,
      title: Stack(
        children: [
          IconButton(
            onPressed: () => context.pop(),
            icon: const Icon(Icons.highlight_off),
            color: AppColors.primary,
          ),
          const Center(
            child: Padding(
              padding: EdgeInsets.only(top: 12.0),
              child: Text(
                'Pembayaran - Tunai',
                style: TextStyle(
                  color: AppColors.primary,
                  fontSize: 16,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),
          ),
        ],
      ),
      content: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SpaceHeight(16.0),
          CustomTextField(
            controller: priceController,
            label: '',
            showLabel: false,
            keyboardType: TextInputType.number,
            onChanged: (value) {
              final int priceValue = value.toIntegerFromText;
              priceController.text = priceValue.currencyFormatRp;
              priceController.selection = TextSelection.fromPosition(
                  TextPosition(offset: priceController.text.length));
            },
          ),
          const SpaceHeight(16.0),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Button.filled(
                onPressed: () {},
                label: 'Uang Pas',
                disabled: true,
                textColor: AppColors.primary,
                fontSize: 13.0,
                width: 112.0,
                height: 50.0,
              ),
              const SpaceWidth(4.0),
              Flexible(
                child: Button.filled(
                  onPressed: () {},
                  label: price.currencyFormatRp,
                  disabled: true,
                  textColor: AppColors.primary,
                  fontSize: 13.0,
                  height: 50.0,
                ),
              ),
            ],
          ),
          const SpaceHeight(30.0),
          Button.filled(
            onPressed: () {
              context.pop();
              showDialog(
                context: context,
                builder: (context) => const PaymentSuccessDialog(),
              );
            },
            label: 'Proses',
          ),
        ],
      ),
    );
  }
}
