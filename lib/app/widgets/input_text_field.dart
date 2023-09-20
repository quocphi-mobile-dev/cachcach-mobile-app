import 'package:cachcach/core/languages/label.dart';
import 'package:cachcach/core/theme/theme.dart';
import 'package:cachcach/core/utils/constant.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class InputTextField extends StatefulWidget {
  final String? hint;
  final String? error;
  final TextEditingController? controller;
  final String? text;
  final TextStyle? hintStyle;
  final TextStyle? textStyle;
  final TextStyle? errorStyle;
  final TextStyle? bottomNoteStyle;
  final TextInputType inputType;
  final TextAlign? textAlign;
  final bool isReadOnly;
  final Color? borderColor;
  final double? radius;
  final Function(String)? onTextChange;
  final Widget? suffixIcon;
  final bool isPassword;
  final VoidCallback? onTap;
  final EdgeInsets? contentPadding;
  final int? maxLength;
  final Function(bool)? onFocusChange;
  final FocusNode? focusNode;
  final double? height;
  final String? label;
  final bool isRequired;
  final String? topNote;
  final String? bottomNote;
  final int? minLines;
  final int? maxLines;
  final List<TextInputFormatter>? inputFormatters;

  const InputTextField({
    Key? key,
    this.hint,
    this.error,
    this.text,
    this.hintStyle,
    this.textStyle,
    this.errorStyle,
    this.inputType = TextInputType.text,
    this.isReadOnly = false,
    this.borderColor,
    this.radius,
    this.onTextChange,
    this.isPassword = false,
    this.suffixIcon,
    this.controller,
    this.onTap,
    this.textAlign,
    this.contentPadding,
    this.maxLength,
    this.onFocusChange,
    this.focusNode,
    this.height,
    this.label,
    this.isRequired = false,
    this.topNote,
    this.bottomNote,
    this.minLines,
    this.maxLines = 1,
    this.bottomNoteStyle,
    this.inputFormatters,
  }) : super(key: key);

  @override
  _InputTextFieldState createState() =>
      _InputTextFieldState();

  factory InputTextField.password({
    int? maxLength,
    String? hint,
    String? error,
    String? text,
    TextStyle? hintStyle,
    TextStyle? errorStyle,
    Color? borderColor,
    double? radius,
    TextEditingController? controller,
    bool isRequired = false,
    String? label,
    String? topNote,
    String? bottomNote,
  }) {
    return InputTextField(
      isPassword: true,
      hint: hint,
      error: error,
      hintStyle: hintStyle,
      errorStyle: errorStyle,
      borderColor: borderColor,
      radius: radius,
      controller: controller,
      isRequired: isRequired,
      label: label,
      topNote: topNote,
      bottomNote: bottomNote,
      maxLength: maxLengthPasswordTextField,
    );
  }

  factory InputTextField.selector(
      {String? hint,
      String? error,
      String? text,
      TextStyle? hintStyle,
      TextStyle? errorStyle,
      TextAlign? textAlign,
      Color? borderColor,
      double? radius,
      Widget? suffixIcon,
      TextEditingController? controller,
      VoidCallback? onTap}) {
    return InputTextField(
      isReadOnly: true,
      hint: hint,
      error: error,
      hintStyle: hintStyle,
      errorStyle: errorStyle,
      borderColor: borderColor,
      textAlign: textAlign,
      radius: radius,
      suffixIcon: suffixIcon,
      controller: controller,
      onTap: onTap,
    );
  }
}

class _InputTextFieldState extends State<InputTextField> {
  var _passwordVisible = false;
  late TextEditingController _controller;

  @override
  void initState() {
    _controller = widget.controller ?? TextEditingController();
    _controller.text = widget.text ?? widget.controller?.text ?? '';
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        widget.label != null ? buildLabel() : const SizedBox(),
        widget.topNote != null ? buildTopNote() : const SizedBox(),
        FocusScope(
          onFocusChange: widget.onFocusChange,
          child: SizedBox(
            height: widget.height ?? 42.dp,
            child: _buildTextField(),
          ),
        ),
        buildBottomNote(),
        buildErrorText()
      ],
    );
  }

  Widget _buildTextField() {
    return Theme(
      data: Theme.of(context).copyWith(
        colorScheme: ThemeData().colorScheme.copyWith(
              primary: AppColors.matterhorn,
            ),
      ),
      child: TextField(
        maxLines: widget.maxLines ?? 1,
        style: const TextStyle(fontSize: 18),
        cursorColor: Colors.black,
        focusNode: widget.focusNode,
        maxLengthEnforcement: MaxLengthEnforcement.enforced,
        maxLength: widget.maxLength ?? maxLengthTextField,
        onTap: widget.onTap,
        textAlign: widget.textAlign ?? TextAlign.start,
        decoration: _buildInputDecoration(),
        readOnly: widget.isReadOnly,
        keyboardType: widget.inputType,
        onChanged: (text) {
          widget.onTextChange?.call(text);
        },
        controller: _controller,
        obscureText: widget.isPassword && !_passwordVisible,
        enableSuggestions: !widget.isPassword,
        autocorrect: !widget.isPassword,
        inputFormatters: widget.inputFormatters,
      ),
    );
  }

  InputDecoration _buildInputDecoration() {
    return InputDecoration(
      fillColor: AppColors.whiteSmokeF7,
      filled: true,
      counterText: '',
      suffixIcon: widget.suffixIcon ??
          (widget.isPassword ? iconPasswordVisibility() : null),
      hintText: widget.hint,
      hintStyle:
          widget.hintStyle ?? const TextStyle(fontSize: 13, color: Colors.grey),
      enabledBorder: OutlineInputBorder(
        borderSide: const BorderSide(
            width: 1.0, color: AppColors.borderInputTextFieldColor),
        borderRadius: BorderRadius.circular(widget.radius ?? 3),
      ),
      focusedBorder: OutlineInputBorder(
        borderSide: const BorderSide(
            width: 1.0, color: AppColors.borderInputTextFieldColor),
        borderRadius: BorderRadius.circular(widget.radius ?? 3),
      ),
      border: OutlineInputBorder(
        borderSide: const BorderSide(width: 0.0, style: BorderStyle.none),
        borderRadius: BorderRadius.circular(widget.radius ?? 3),
      ),
      contentPadding:
          widget.contentPadding ?? const EdgeInsets.fromLTRB(10, 10, 10, 12),
    );
  }

  Widget buildLabel() {
    return Column(
      children: [
        RichText(
          text: TextSpan(
            children: [
              TextSpan(
                text: widget.label ?? "",
                style: AppTextStyle.t12w700(),
              ),
              widget.isRequired
                  ? TextSpan(
                      text: Label.requiredCharacter.tr,
                      style: AppTextStyle.t12w400(AppColors.indianRed),
                    )
                  : const TextSpan(text: ""),
            ],
          ),
        ),
        SizedBox(height: 6.dp),
      ],
    );
  }

  Widget buildErrorText() {
    return Visibility(
      visible: widget.error?.isNotEmpty == true,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          SizedBox(
            height: 4.dp,
          ),
          RichText(
              text: TextSpan(children: [
            TextSpan(
              text: "※",
              style: widget.errorStyle ??
                  AppTextStyle.t12w700(AppColors.indianRed),
            ),
            TextSpan(
              text: widget.error ?? "",
              style: widget.errorStyle ??
                  AppTextStyle.t12w700(AppColors.indianRed),
            ),
          ])),
        ],
      ),
    );
  }

  Widget buildBottomNote() {
    return Visibility(
      visible: widget.bottomNote?.isNotEmpty == true,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          SizedBox(
            height: 6.dp,
          ),
          Text(
            widget.bottomNote ?? "",
            style: widget.bottomNoteStyle ?? AppTextStyle.t12w400(),
          ),
        ],
      ),
    );
  }

  IconButton? iconPasswordVisibility() {
    return IconButton(
      icon: Icon(
        _passwordVisible ? Icons.visibility_off : Icons.visibility,
        size: 16.0.dp,
      ),
      onPressed: () {
        setState(() {
          _passwordVisible = !_passwordVisible;
        });
      },
    );
  }

  Widget buildTopNote() {
    return Column(
      children: [
        Text(
          widget.topNote ?? "",
          style: AppTextStyle.t12w400(),
        ),
        SizedBox(
          height: 12.dp,
        )
      ],
    );
  }
}
