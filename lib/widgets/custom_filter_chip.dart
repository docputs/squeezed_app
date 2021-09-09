import 'package:flutter/material.dart';
import 'package:squeezed_app/shared/res/app_colors.dart';

class CustomFilterChip extends StatefulWidget {
  final String labelText;
  final void Function(bool) onSelected;

  const CustomFilterChip({
    Key? key,
    required this.labelText,
    required this.onSelected,
  }) : super(key: key);

  @override
  _CustomFilterChipState createState() => _CustomFilterChipState();
}

class _CustomFilterChipState extends State<CustomFilterChip> {
  bool _isSelected = false;

  @override
  Widget build(BuildContext context) {
    return FilterChip(
      label: Text(widget.labelText),
      onSelected: (value) {
        setState(() {
          _isSelected = value;
        });
        widget.onSelected(value);
      },
      padding: const EdgeInsets.all(5),
      backgroundColor: Colors.transparent,
      selected: _isSelected,
      showCheckmark: false,
      shape: StadiumBorder(side: BorderSide(color: _isSelected ? AppColors.primary : AppColors.grey)),
      selectedColor: AppColors.primary,
      labelStyle: TextStyle(
        color: _isSelected ? Colors.white : AppColors.grey,
        fontWeight: FontWeight.bold,
      ),
    );
  }
}
