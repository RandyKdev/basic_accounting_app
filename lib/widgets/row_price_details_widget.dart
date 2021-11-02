import 'package:flutter/material.dart';

class RowPriceDetailsWidget extends StatelessWidget {
  final String title;
  final String price;
  final TextStyle titleTextStyle;
  final TextStyle priceTextStyle;
  const RowPriceDetailsWidget({
    required this.title,
    required this.price,
    required this.titleTextStyle,
    required this.priceTextStyle,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title,
          style: titleTextStyle,
        ),
        Expanded(
          child: Text(
            price,
            textAlign: TextAlign.end,
            style: priceTextStyle,
          ),
        ),
      ],
    );
  }
}
