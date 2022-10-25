// ignore_for_file: prefer_const_constructors
import 'package:badges/badges.dart';
import 'package:flutter/material.dart';
import 'package:mobile_dashboard/widgets/header.dart';

import 'components/drawer.dart';
import 'components/order_chart.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: Header(),
      drawer: HomeDrawer(),
      body: ListView(
        padding: EdgeInsets.symmetric(horizontal: 10),
        shrinkWrap: true,
        physics: AlwaysScrollableScrollPhysics(),
        children: [
          topComponent(),
          SizedBox(height: 20,),
          OrderChart()
        ],
      ),
    );
  }

  topComponent() {
    return OrientationBuilder(
        builder: (context, orientation) => GridView.count(
              shrinkWrap: true,
              physics: ClampingScrollPhysics(),
              mainAxisSpacing: 10,
              crossAxisSpacing: 10,
              childAspectRatio: 1,
              crossAxisCount: orientation == Orientation.landscape ? 4 : 2,
              children: [
                Container(
                  padding: EdgeInsets.all(20),
                  color: Colors.redAccent,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: const [
                      CircleAvatar(
                        radius: 30,
                        child: Icon(Icons.account_balance_wallet_rounded),
                      ),
                      Text('\$200',
                          style: TextStyle(
                            fontSize: 20,
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          )),
                      Text('Credit Amount',
                          style: TextStyle(color: Colors.white))
                    ],
                  ),
                ),
                Container(
                  padding: EdgeInsets.all(20),
                  color: Colors.amberAccent,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: const [
                      CircleAvatar(
                        radius: 30,
                        child: Icon(Icons.account_balance_wallet_rounded),
                      ),
                      Text('\$6500',
                          style: TextStyle(
                            fontSize: 25,
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          )),
                      Text('Lifetime Sales',
                          style: TextStyle(color: Colors.white))
                    ],
                  ),
                ),
                Container(
                  padding: EdgeInsets.all(20),
                  color: Colors.greenAccent,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: const [
                      CircleAvatar(
                        radius: 30,
                        child: Icon(Icons.account_balance_wallet_rounded),
                      ),
                      Text('\$350',
                          style: TextStyle(
                            fontSize: 25,
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          )),
                      Text('Average Orders',
                          style: TextStyle(color: Colors.white))
                    ],
                  ),
                ),
                Container(
                  padding: EdgeInsets.all(20),
                  color: Colors.purpleAccent,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: const [
                      CircleAvatar(
                        radius: 30,
                        child: Icon(Icons.account_balance_wallet_rounded),
                      ),
                      Text('55',
                          style: TextStyle(
                            fontSize: 25,
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          )),
                      Text('Total Products',
                          style: TextStyle(color: Colors.white))
                    ],
                  ),
                )
              ],
            ));
  }
}
