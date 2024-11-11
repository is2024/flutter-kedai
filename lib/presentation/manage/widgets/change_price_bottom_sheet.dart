import 'package:fic11_starter_pos/core/extensions/build_context_ext.dart';
import 'package:fic11_starter_pos/core/extensions/int_ext.dart';
import 'package:fic11_starter_pos/core/extensions/string_ext.dart';
import 'package:flutter/material.dart';

import '../../../core/assets/assets.gen.dart';
import '../../../core/components/buttons.dart';
import '../../../core/components/custom_text_field.dart';
import '../../../core/components/spaces.dart';
import '../../../core/constants/colors.dart';

class ChangePriceBottomSheet extends StatelessWidget {
  final int price;
  const ChangePriceBottomSheet({super.key, required this.price});

  @override
  Widget build(BuildContext context) {
    final priceController = TextEditingController(text: price.currencyFormatRp);

    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20.0, horizontal: 24.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          const Text(
            'Atur Harga',
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w700,
            ),
          ),
          const SizedBox(
            width: 90.0,
            child: Divider(color: AppColors.blueLight),
          ),
          const SpaceHeight(16.0),
          const Text(
            'Masukkan Nominal',
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w400,
            ),
          ),
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
            suffixIcon: InkWell(
              onTap: () => priceController.clear(),
              child: Padding(
                padding: const EdgeInsets.all(12.0),
                child: Assets.icons.delete.svg(),
              ),
            ),
          ),
          const SpaceHeight(60.0),
          Button.filled(
            onPressed: () {
              context.pop();
            },
            label: 'Konfirmasi',
          ),
        ],
      ),
    );
  }
}
