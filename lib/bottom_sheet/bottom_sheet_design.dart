import 'package:custom_bottom_sheet/core/constants/custom_padding.dart';
import 'package:custom_bottom_sheet/core/context_extention.dart';
import 'package:flutter/material.dart';

import 'package:custom_bottom_sheet/core/constants/string_data.dart';

import '../core/widgets/custom_text_field.dart';

class BottomSheetDesign extends StatelessWidget {
  final TextEditingController controller;
  final Function() onTapped;
  const BottomSheetDesign({
    Key? key,
    required this.controller,
    required this.onTapped,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: context.height * 0.6,
      child: Column(
        mainAxisSize: MainAxisSize.max,
        children: [
          Padding(
            padding: const CustomPadding.all(),
            child: CustomTextField(
              title: StringData.textfieldData,
              controller: controller,
            ),
          ),
          ElevatedButton(
            onPressed: onTapped,
            child: const Text(StringData.close),
          )
        ],
      ),
    );
  }
}
