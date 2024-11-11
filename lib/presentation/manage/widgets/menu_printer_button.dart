import 'package:fic11_starter_pos/core/extensions/build_context_ext.dart';
import 'package:flutter/material.dart';

import '../../../core/constants/colors.dart';


class MenuPrinterButton extends StatelessWidget {
  final String label;
  final VoidCallback onPressed;
  final bool isActive;

  const MenuPrinterButton({
    super.key,
    required this.label,
    required this.onPressed,
    required this.isActive,
  });

  @override
  Widget build(BuildContext context) {
    return Flexible(
      child: InkWell(
        onTap: onPressed,
        child: Container(
          width: context.deviceWidth,
          padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
          decoration: BoxDecoration(
            color: isActive ? Colors.white : AppColors.card,
            borderRadius: BorderRadius.circular(6),
            boxShadow: isActive
                ? const [
                    BoxShadow(
                      color: AppColors.white,
                      blurRadius: 2,
                      offset: Offset(0, 1),
                      spreadRadius: 0,
                    ),
                  ]
                : null,
          ),
          child: Text(
            label,
            textAlign: TextAlign.center,
            style: TextStyle(
              color: isActive ? AppColors.primary : AppColors.black,
            ),
          ),
        ),
      ),
    );
  }
}
