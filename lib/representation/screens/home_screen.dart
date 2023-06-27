import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:money_managing/helper/asset_helper.dart';
import 'package:money_managing/helper/image_helper.dart';
import 'package:money_managing/representation/widgets/card_container.dart';
import 'package:money_managing/representation/widgets/item_operation_container.dart';
import 'package:money_managing/representation/widgets/transaction_container.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  PageController pageController = PageController(viewportFraction: 0.92);
  int indexPage = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        top: true,
        child: Column(
          children: [
            Container(
              margin: const EdgeInsets.only(left: 20, right: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      ImageHelper.loadFromAsset(AssetHelper.iconMenu),
                      ClipRRect(
                        borderRadius: BorderRadius.circular(1000),
                        child: ImageHelper.loadFromAsset(
                          AssetHelper.iconAva,
                          width: 100,
                          height: 100,
                        ),
                      ),
                    ],
                  ),
                  const Text('Good Evening'),
                  const SizedBox(height: 6),
                  const Text(
                    'Luong Duy Dang',
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
            const SizedBox(
              height: 15,
            ),
            buildItemOperation(),
            const SizedBox(
              height: 15,
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              child: Row(
                children: [
                  Text(
                    'Transaction Histories',
                    // textAlign: TextAlign.start,
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                  ),
                ],
              ),
            ),
            const TransactionContainer(
              image: AssetHelper.iconUber,
              title: 'UberRide',
              date: '1st Apr 2020',
              price: '-\$35.214',
            ),
            const TransactionContainer(
              image: AssetHelper.iconNike,
              title: 'Nike Outlet',
              date: '30th Mar 2020',
              price: '-\$100.0',
            ),
          ],
        ),
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
