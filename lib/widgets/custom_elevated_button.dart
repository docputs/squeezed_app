import 'package:flutter/material.dart';
import 'package:squeezed_app/shared/res/app_colors.dart';
import 'package:squeezed_app/shared/res/constants.dart';

class CustomElevatedButton extends StatelessWidget {
  final String text;
  final VoidCallback? onPressed;
  final Color backgroundColor;
  final bool horizontallyExpanded;
  final EdgeInsets? customPadding;

  const CustomElevatedButton({
    Key? key,
    required this.text,
    this.onPressed,
    this.backgroundColor = AppColors.primary,
    this.horizontallyExpanded = true,
    this.customPadding,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: horizontallyExpanded ? double.infinity : null,
      padding: customPadding,
      child: ElevatedButton(
        onPressed: onPressed != null
            ? () {
                _hideKeyboard(context);
                onPressed!();
              }
            : null,
        style: ElevatedButton.styleFrom(
          padding: const EdgeInsets.symmetric(
            horizontal: Constants.defaultPadding,
            vertical: Constants.defaultPadding / 1.5,
          ),
          primary: backgroundColor,
        ),
        child: Text(
          text.toUpperCase(),
          style: const TextStyle(
            fontSize: 16,
            letterSpacing: 1.2,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }

  void _hideKeyboard(BuildContext context) {
    final currentFocus = FocusScope.of(context);
    if (currentFocus.hasFocus) {
      currentFocus.unfocus();
    }
  }
}
