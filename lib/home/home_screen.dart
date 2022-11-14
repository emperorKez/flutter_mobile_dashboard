// ignore_for_file: prefer_const_constructors
import 'package:flutter/material.dart';
import 'package:mobile_dashboard/home/components/best_seller.dart';
import 'package:mobile_dashboard/home/components/latest_orders.dart';
import 'package:mobile_dashboard/home/components/latest_transactions.dart';
import 'package:mobile_dashboard/widgets/bottom_nav.dart';
import 'package:mobile_dashboard/widgets/header.dart';

import '../widgets/charts/bar_chart.dart';
import '../widgets/charts/line_chart.dart';
import '../widgets/charts/pie_chart.dart';
import 'components/drawer.dart';
import 'components/order_chart.dart';
import 'components/recently_added_products.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: Header(title: 'Seller Dashboard',),
      drawer: HomeDrawer(),
      body: ListView(
        padding: EdgeInsets.symmetric(horizontal: 10),
        shrinkWrap: true,
        physics: AlwaysScrollableScrollPhysics(),
        children: [
          topComponent(),
          SizedBox(
            height: 20,
          ),
          OrderChart(),
          SizedBox(
            height: 20,
          ),
          RecentlyAddedProducts(),
          SizedBox(
            height: 20,
          ),
          BestSeller(),
          SizedBox(
            height: 20,
          ),
          LatestOrders(),
          SizedBox(
            height: 20,
          ),
          LatestTransaction(),
          SizedBox(
            height: 20,
          ),
          BarChart1(),
          PieChartSample2(),
          LineChartSample2(),
        ],
      ),
      bottomNavigationBar: BottomNavBar(activeIndex: 0),
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
                topContainer(
                    color: Colors.red,
                    title: '\$200',
                    subtitle: 'Credit Amount',
                    icon: Icons.credit_card_sharp),
                topContainer(
                    color: Colors.amberAccent,
                    title: '\$6500',
                    subtitle: 'Lifetime Sales',
                    icon: Icons.local_mall_sharp),
                topContainer(
                    color: Colors.greenAccent,
                    title: '\$350',
                    subtitle: 'Average Orders',
                    icon: Icons.equalizer_sharp),
                topContainer(
                    color: Colors.purpleAccent,
                    title: '55',
                    subtitle: 'Total Products',
                    icon: Icons.inventory_sharp),
              ],
            ));
  }

  Widget topContainer(
      {required color, required title, required subtitle, required icon}) {
    return Container(
      padding: EdgeInsets.all(20),
      decoration:
          BoxDecoration(borderRadius: BorderRadius.circular(10), color: color),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          CircleAvatar(
            radius: 30,
            child: Icon(icon),
          ),
          Text(title,
              style: TextStyle(
                fontSize: 20,
                color: Colors.white,
                fontWeight: FontWeight.bold,
              )),
          Text(subtitle, style: TextStyle(color: Colors.white))
        ],
      ),
    );
  }
}
