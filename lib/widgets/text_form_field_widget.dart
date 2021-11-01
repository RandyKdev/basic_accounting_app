import 'package:basic/classes/size_units_class.dart';
import 'package:basic/constants/color_constants.dart';
import 'package:basic/constants/textstyle_constants.dart';
import 'package:flutter/material.dart';

class TextFormFieldWidget extends StatelessWidget {
  final String Function(String?) validator;
  final String hintText;
  final Color hintTextColor;
  final TextInputType keyboardType;
  final int minLines;
  final int maxLines;
  final String initialValue;
  final TextEditingController controller;
  final FocusNode focusNode;
  const TextFormFieldWidget({
    required this.controller,
    required this.initialValue,
    required this.focusNode,
    required this.hintText,
    required this.hintTextColor,
    required this.keyboardType,
    required this.maxLines,
    required this.minLines,
    required this.validator,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        vertical: SizeUnitsClass.big,
        horizontal: SizeUnitsClass.big,
      ),
      decoration: BoxDecoration(
        color: whiteColor,
        borderRadius: BorderRadius.all(
          Radius.circular(SizeUnitsClass.big),
        ),
      ),
      child: TextFormField(
        controller: controller,
        focusNode: focusNode,
        keyboardType: keyboardType,
        validator: validator,
        minLines: minLines,
        maxLines: maxLines,
        initialValue: initialValue,
        decoration: InputDecoration(
          hintText: hintText,
          hintStyle: bodyTextStyle.merge(TextStyle(color: hintTextColor)),
          contentPadding: EdgeInsets.symmetric(vertical: SizeUnitsClass.medium),
          enabledBorder: InputBorder.none,
        ),
      ),
    );
  }
}
