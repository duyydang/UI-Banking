import 'package:flutter/material.dart';
import 'package:money_managing/helper/asset_helper.dart';
import 'package:money_managing/helper/image_helper.dart';

class CardContainer extends StatelessWidget {
  const CardContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return  Container(
      margin: const EdgeInsets.only(right: 10),
      width: 344,
      height: 199,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30),
        color: Theme.of(context).primaryColor,
      ),
      child: Stack(
        children: [
          ClipRRect(
              borderRadius: const BorderRadius.only(topLeft: Radius.circular(30)),
              child: ImageHelper.loadFromAsset(AssetHelper.iconEllipseTop)),
          Positioned(
              right: 0,
              bottom: 0,
              child: ClipRRect(
                  borderRadius:
                  const BorderRadius.only(bottomRight: Radius.circular(30)),
                  child:
                  ImageHelper.loadFromAsset(AssetHelper.iconEllipseBottom))),
          Positioned(
              top: 35,
              right: 21,
              child: ImageHelper.loadFromAsset(AssetHelper.iconMaterCard)),
          Positioned(
            top: 40,
            left: 29,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'CARD NUMBER',
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
                const Text(
                  '**** **** **** 1425',
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 23),
                ),
                const SizedBox(
                  height: 48,
                ),
                Row(
                  children: const [
                    Text(
                      'CARD HOLDERNAME',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 15,
                      ),
                    ),
                    SizedBox(width: 50),
                    Text(
                      'EXPIRY DATE',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 15,
                      ),
                    )
                  ],
                ),
                Row(
                  children: const [
                    Text(
                      'Amanda Alex',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(width: 72),
                    Text(
                      '03-01-2023',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    )
                  ],
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
