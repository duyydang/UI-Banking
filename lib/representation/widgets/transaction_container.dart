import 'package:flutter/material.dart';
import 'package:money_managing/helper/image_helper.dart';

class TransactionContainer extends StatelessWidget {
  const TransactionContainer({super.key, required this.image, required this.title, required this.date, required this.price});

  final String image;
  final String title;
  final String date;
  final String price;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 20),
      margin: const EdgeInsets.only(bottom: 10),
      width: 373,
      height: 85,
      decoration: BoxDecoration(
        color: Colors.black12,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Row(
        children: [
          ImageHelper.loadFromAsset(image),
          const SizedBox(
            width: 15,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                title,
                style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
              ),
              Text(
                date,
                style: const TextStyle(fontSize: 15),
              )
            ],
          ),
          const SizedBox(width: 70,),
          Text(
            price,
            style: TextStyle(
              color: Theme.of(context).primaryColor,
              fontWeight: FontWeight.bold,
              fontSize: 18,
            ),
          )
        ],
      ),
    );
  }
}
