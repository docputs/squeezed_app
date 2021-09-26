import 'package:flutter/widgets.dart';
import 'package:sliding_sheet/sliding_sheet.dart';

class CustomSlidingSheetDialog extends SlidingSheetDialog {
  CustomSlidingSheetDialog({
    SheetController? controller,
    required Widget Function(BuildContext, SheetState, SheetController?) builder,
  }) : super(
          avoidStatusBar: true,
          cornerRadius: 20,
          cornerRadiusOnFullscreen: 0,
          controller: controller,
          duration: const Duration(milliseconds: 300),
          builder: (context, state) => builder(context, state, controller),
        );
}