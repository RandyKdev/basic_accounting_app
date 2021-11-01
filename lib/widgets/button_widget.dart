import 'package:basic/Enums/button_size_enums.dart';
import 'package:basic/constants/color_constants.dart';
import 'package:basic/constants/textstyle_constants.dart';
import 'package:flutter/material.dart';

class ButtonWidget extends StatelessWidget {
  final void Function() onTap;
  final bool loading;
  final String text;
  final Color backgroundColor;
  final Color textColor;
  final ButtonSize size;

  const ButtonWidget({
    required this.backgroundColor,
    required this.loading,
    required this.onTap,
    required this.size,
    required this.text,
    required this.textColor,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: loading ? null : onTap,
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(20)),
          color: loading ? greyColor : backgroundColor,
        ),
        width: double.infinity,
        padding: EdgeInsets.symmetric(
          vertical: 20,
          horizontal: size == ButtonSize.big ? 20 : 5,
        ),
        child: loading
            ? CircularProgressIndicator(
                color: Colors.white,
              )
            : Text(
                text,
                textAlign: TextAlign.center,
                style: bodyBoldTextStyle.merge(TextStyle(color: textColor)),
              ),
      ),
    );
  }
}
