import 'package:custom_bottom_sheet/bottom_sheet/show_bottom_sheet.dart';
import 'package:custom_bottom_sheet/core/constants/string_data.dart';
import 'package:flutter/material.dart';

class BottomSheetVeiw extends StatefulWidget {
  const BottomSheetVeiw({super.key});

  @override
  State<BottomSheetVeiw> createState() => _BottomSheetVeiwState();
}

class _BottomSheetVeiwState extends State<BottomSheetVeiw> with BottomSheetMixin {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: ValueListenableBuilder(
            valueListenable: title,
            builder: (BuildContext context, dynamic value, Widget? child) {
              return Text(checkTitle());
            },
          ),
        ),
        floatingActionButton: FloatingActionButton.extended(
          label: const Text(StringData.openSheet),
          onPressed: openBottomSheet,
        ));
  }
}
