import 'package:flash/flash.dart';
import 'package:flutter/material.dart';
import 'package:squeezed_app/shared/res/app_colors.dart';

class CustomSnackBar extends StatelessWidget {
  final String message;
  final FlashController controller;
  final Color? backgroundColor;
  final Color? textColor;

  const CustomSnackBar({
    Key? key,
    required this.message,
    required this.controller,
    this.backgroundColor = AppColors.accent,
    this.textColor = Colors.white,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Flash.bar(
      controller: controller,
      child: FlashBar(
        content: Text(message, style: TextStyle(color: textColor)),
      ),
      backgroundColor: backgroundColor,
      margin: const EdgeInsets.all(16),
      borderRadius: BorderRadius.circular(16),
    );
  }

  const CustomSnackBar.success({
    required String message,
    required FlashController controller,
  }) : this(
          message: message,
          controller: controller,
          backgroundColor: AppColors.success,
          textColor: Colors.white,
        );

  const CustomSnackBar.error({
    required String message,
    required FlashController controller,
  }) : this(
          message: message,
          controller: controller,
          backgroundColor: AppColors.error,
          textColor: Colors.white,
        );
}
