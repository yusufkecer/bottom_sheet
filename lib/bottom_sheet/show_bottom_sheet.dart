import 'package:custom_bottom_sheet/bottom_sheet/bottom_sheet_design.dart';
import 'package:custom_bottom_sheet/bottom_sheet/bottom_sheet_view.dart';
import 'package:flutter/material.dart';

import '../core/constants/string_data.dart';

mixin BottomSheetMixin on State<BottomSheetVeiw> {
  TextEditingController _controller = TextEditingController();
  ValueNotifier<String> _valueNotifier = ValueNotifier<String>('');
  ValueNotifier<String> get title => _valueNotifier;

  void openBottomSheet() {
    showModalBottomSheet(
      context: context,
      shape: const RoundedRectangleBorder(borderRadius: BorderRadius.horizontal()),
      enableDrag: true,
      builder: (context) {
        return BottomSheetDesign(
          onTapped: closeBottomSheet,
          controller: _controller,
        );
      },
    );
  }

  void closeBottomSheet() {
    _valueNotifier.value = _controller.text;
    Navigator.of(context).pop();
  }

  String checkTitle() {
    return title.value.isEmpty ? StringData.title : title.value;
  }
}
