import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:money_managing/helper/asset_helper.dart';
import 'package:money_managing/helper/image_helper.dart';
import 'package:money_managing/representation/widgets/card_container.dart';
import 'package:money_managing/representation/widgets/item_operation_container.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  PageController pageController = PageController(viewportFraction: 0.8);
  int indexPage = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            margin: const EdgeInsets.only(top: 40, left: 20, right: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    ImageHelper.loadFromAsset(AssetHelper.iconMenu),
                    ImageHelper.loadFromAsset(AssetHelper.iconAva),
                  ],
                ),
                const SizedBox(height: 20),
                const Text('Good Evening'),
                const SizedBox(height: 6),
                const Text(
                  'Amanda Alex',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 30,
                  ),
                ),
                const SizedBox(height: 17),
              ],
            ),
          ),
          SizedBox(
            height: 199,
            child: PageView(
              controller: pageController,
              onPageChanged: (value) {
                setState(() {
                  indexPage = value;
                  print(indexPage);
                });
              },
              children: const [
                CardContainer(),
                CardContainer(),
                CardContainer(),
              ],
            ),
          ),
          Container(
            margin: const EdgeInsets.only(top: 20, left: 20, right: 20),
            child: Column(
              children: [
                Row(
                  children: [
                    const Text(
                      'Operation',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                      ),
                    ),
                    const SizedBox(width: 230),
                    DotsIndicator(
                      decorator: DotsDecorator(
                        spacing: const EdgeInsets.all(3),
                        color: Colors.black45,
                        activeColor: Theme.of(context).primaryColor,
                      ),
                      dotsCount: 3,
                      position: indexPage.toDouble(),
                    ),
                  ],
                ),
              ],
            ),
          ),
          buildItemOperation(),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: Row(
              children: const [
                Text(
                  'Transaction Histories',
                  // textAlign: TextAlign.start,
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }

  Row buildItemOperation() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        ItemOperationContainer(
          text: 'Money\nTransfer',
          textColor: Colors.white,
          backgroundColor: Theme.of(context).primaryColor,
          img: AssetHelper.iconMoney,
        ),
        const ItemOperationContainer(
          text: 'Insights\nTracking',
          img: AssetHelper.iconGlass,
        ),
        const ItemOperationContainer(
          text: 'Bank\nWithdraw',
          img: AssetHelper.iconBank,
        ),
      ],
    );
  }
}
