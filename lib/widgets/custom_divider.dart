import 'package:flutter/material.dart';
import 'package:squeezed_app/shared/res/app_colors.dart';

class CustomDivider extends StatelessWidget {
  final double height;
  final Color color;

  const CustomDivider({
    Key? key,
    this.height = 1,
    this.color = AppColors.greyLight,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: height,
      color: color,
    );
  }
}
