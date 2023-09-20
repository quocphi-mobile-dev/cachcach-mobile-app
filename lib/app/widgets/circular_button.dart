import 'package:cachcach/core/theme/colors.dart';
import 'package:cachcach/core/theme/text_styles.dart';
import 'package:flutter/material.dart';

class CircularButton extends StatelessWidget {
  final String label;
  final String? icon;
  final Function? onTap;

  CircularButton({required this.label, this.onTap, this.icon});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        InkWell(
          onTap: () => onTap?.call(),
          child: Container(
            padding: EdgeInsets.all(8.0),
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: AppColors.grey400,
            ),
            //TODO: Update icon
            child: const Icon(
              Icons.ac_unit,
              size: 48.0,
            ),
          ),
        ),
        const SizedBox(
          height: 8.0,
        ),
        Text(
          label,
          style: AppTextStyle.textStyle12.copyWith(color: AppColors.black),
        )
      ],
    );
  }
}
