import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:squeezed_app/res/app_colors.dart';

class CustomTextField extends StatefulWidget {
  final String? labelText;
  final String? hintText;
  final TextEditingController? controller;
  final String? Function(String?)? validator;
  final void Function(String)? onChanged;
  final bool obscureText;
  final Widget? suffixIcon;
  final TextInputType? keyboardType;
  final bool enabled;
  final TextInputFormatter? maskFormatter;
  final int? maxLines;
  final TextInputAction? textInputAction;

  const CustomTextField({
    Key? key,
    this.labelText,
    this.hintText,
    this.controller,
    this.validator,
    this.onChanged,
    this.enabled = true,
    this.obscureText = false,
    this.suffixIcon,
    this.keyboardType,
    this.maskFormatter,
    this.maxLines = 1,
    this.textInputAction,
  }) : super(key: key);

  @override
  _CustomTextFieldState createState() => _CustomTextFieldState();
}

class _CustomTextFieldState extends State<CustomTextField> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        if (widget.labelText != null) ...[
          Text(
            widget.labelText!,
            style: const TextStyle(fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 5),
        ],
        Stack(
          alignment: AlignmentDirectional.centerEnd,
          children: [
            TextFormField(
              autocorrect: false,
              controller: widget.controller,
              enabled: widget.enabled,
              validator: widget.validator,
              obscureText: widget.obscureText,
              keyboardType: widget.keyboardType,
              onChanged: widget.onChanged,
              decoration: InputDecoration(
                isDense: true,
                hintText: widget.hintText,
                hintStyle: const TextStyle(color: AppColors.greyLight),
                contentPadding: const EdgeInsets.all(15),
              ),
            ),
            if (widget.suffixIcon != null) widget.suffixIcon!,
          ],
        ),
      ],
    );
  }
}
