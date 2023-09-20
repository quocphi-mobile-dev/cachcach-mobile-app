import 'package:cachcach/app/widgets/widget_common.dart';
import 'package:cachcach/core/theme/dimens.dart';
import 'package:cachcach/core/utils/dialog_helper.dart';
import 'package:flutter/material.dart';

import '../../core/theme/colors.dart';
import '../../core/theme/text_styles.dart';

class FeatureButton extends StatelessWidget {
  const FeatureButton({
    Key? key,
    this.title,
    this.badge = 0,
    required this.onTap,
    this.iconColor,
    this.textColor,
    this.iconSize,
    required this.icon,
  }) : super(key: key);

  final String? title;
  final int badge;
  final VoidCallback onTap;
  final String icon;

  final Color? iconColor;
  final Color? textColor;
  final double? iconSize;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        DialogHelper.hideDialog();
        onTap.call();
      },
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        mainAxisSize: MainAxisSize.min,
        children: [
          buttonIcon(),
          space(h: 8.dp),
          Text(
            title ?? "",
            style: AppTextStyle.t12w700(textColor ?? AppColors.matterhorn),
            textAlign: TextAlign.center,
            overflow: TextOverflow.ellipsis,
          ),
        ],
      ),
    );
  }

  Widget buttonIcon() {
    return Image.asset(
      icon,
      width: 30.dp,
      height: 20.dp,
      fit: BoxFit.contain,
      // color: iconColor ?? AppColors.matterhorn,
    );
  }
}
