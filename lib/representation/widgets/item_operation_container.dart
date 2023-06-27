import 'package:flutter/material.dart';
import 'package:money_managing/helper/asset_helper.dart';
import 'package:money_managing/helper/image_helper.dart';

class ItemOperationContainer extends StatelessWidget {
  const ItemOperationContainer(
      {super.key,
      required this.text,
      required this.img,
      this.backgroundColor = Colors.white54,
      this.textColor = Colors.black});

  final String text;
  final String img;
  final Color backgroundColor;
  final Color textColor;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 15),
        margin: const EdgeInsets.all(8),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: backgroundColor,
        ),
        child: Column(
          children: [
            ImageHelper.loadFromAsset(img),
            const SizedBox(height: 8),
            Text(
              text,
              style: TextStyle(
                color: textColor,
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.center,
            )
          ],
        ),
      ),
    );
  }
}
