import 'package:flutter/material.dart';

class CustomSectionHeader extends StatelessWidget {
  final String title;
  final double bottomPadding;
  final double topPadding;

  const CustomSectionHeader(
    this.title, {
    Key? key,
    this.bottomPadding = 10,
    this.topPadding = 10,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: topPadding, bottom: bottomPadding),
      width: double.infinity,
      child: Text(
        title,
        style: const TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 20,
        ),
      ),
    );
  }
}
