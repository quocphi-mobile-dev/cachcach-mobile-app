import 'package:cachcach/app/widgets/dialog.dart';
import 'package:cachcach/app/widgets/widget_common.dart';
import 'package:cachcach/core/extensions/extensions.dart';
import 'package:cachcach/core/theme/dimens.dart';
import 'package:flutter/material.dart';

class LoadingDialog extends StatelessWidget {
  final Color? colorDialog;

  LoadingDialog({this.colorDialog});

  factory LoadingDialog.linear(
    ProgressLoadingController controller, {
    String? description,
    Color? color,
  }) {
    return _ProgressLoading(
      controller: controller,
      description: description ?? '',
      color: color,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Center(child: CircularProgressIndicator(color: colorDialog));
  }
}

class _ProgressLoading extends LoadingDialog {
  final ProgressLoadingController controller;
  final String description;

  _ProgressLoading({
    required this.controller,
    this.description = '',
    Color? color,
  }) : super(colorDialog: color);

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder<double>(
      valueListenable: controller,
      builder: (_, value, __) {
        return DialogBase(
          builder: (context) {
            return Column(
              children: [
                LinearProgressIndicator(
                  color: colorDialog,
                  value: value,
                ),
                space(h: 16.dp),
                Text(
                  '$description（${value.toPercent}）',
                  textAlign: TextAlign.center,
                )
              ],
            );
          },
          onPositionPressed: null,
          showPositionButton: false,
        );
      },
    );
  }
}

class ProgressLoadingController extends ValueNotifier<double> {
  ProgressLoadingController({double? value}) : super(value ?? 0);
}
