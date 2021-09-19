import 'package:flutter/material.dart';
import 'package:squeezed_app/shared/res/messages.dart';

class FullWidthLabelText extends StatelessWidget {
  final String text;

  const FullWidthLabelText(this.text, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const SizedBox(
      width: double.infinity,
      child: Text(
        Messages.createWorkoutSelectWeekdaysLabel,
        style: TextStyle(fontWeight: FontWeight.bold),
      ),
    );
  }
}
