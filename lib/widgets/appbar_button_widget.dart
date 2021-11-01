import 'package:basic/Enums/button_size_enums.dart';
import 'package:basic/classes/size_units_class.dart';
import 'package:basic/classes/spacing_class.dart';
import 'package:basic/constants/color_constants.dart';
import 'package:basic/constants/textstyle_constants.dart';
import 'package:flutter/material.dart';

class AppBarButtonWidget extends StatelessWidget {
  final void Function() onTap;
  final ButtonSize size;
  final Widget icon;
  final String text;
  final bool isIconSameSize;
  const AppBarButtonWidget({
    required this.icon,
    required this.isIconSameSize,
    required this.onTap,
    required this.size,
    required this.text,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FittedBox(
      child: InkWell(
        onTap: onTap,
        child: Container(
          padding: EdgeInsets.symmetric(
            vertical: SizeUnitsClass.medium,
            horizontal: size == ButtonSize.small
                ? SizeUnitsClass.medium
                : SizeUnitsClass.big,
          ),
          decoration: BoxDecoration(
              color: lightWhiteColor,
              borderRadius: BorderRadius.all(
                Radius.circular(SizeUnitsClass.medium),
              )),
          child: Row(
            children: [
              icon,
              SpacingClass.hrRegular,
              Text(
                text,
                style: labelBoldTextStyle,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
