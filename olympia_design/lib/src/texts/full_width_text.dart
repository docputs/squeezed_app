import 'package:flutter/material.dart';

class FullWidthText extends StatelessWidget {
  final String value;
  final TextStyle? style;

  const FullWidthText(
    this.value, {
    Key? key,
    this.style,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Text(value, style: style),
    );
  }
}
