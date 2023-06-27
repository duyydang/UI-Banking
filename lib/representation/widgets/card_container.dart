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
          const Positioned(
            top: 40,
            left: 29,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'CARD NUMBER',
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
                Text(
                  '**** **** **** 1425',
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 23),
                ),
                SizedBox(
                  height: 48,
                ),
                Row(
                  children: [
                    Text(
                      'CARD HOLDER NAME',
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
                  children: [
                    Text(
                      'LUONG DUY DANG',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(width: 15),
                    Text(
                      '23-01-2023',
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
