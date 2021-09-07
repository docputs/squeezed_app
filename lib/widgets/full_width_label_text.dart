import 'package:flutter/material.dart';

class FullWidthLabelText extends StatelessWidget {
  final String text;

  const FullWidthLabelText(this.text, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const SizedBox(
      width: double.infinity,
      child: Text(
        'Selecione os dias da semana',
        style: TextStyle(fontWeight: FontWeight.bold),
      ),
    );
  }
}
