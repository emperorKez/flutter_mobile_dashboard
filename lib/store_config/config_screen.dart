import 'package:flutter/material.dart';
import 'package:mobile_dashboard/store_config/general_store_config.dart';
import 'package:mobile_dashboard/store_config/seller_page_config.dart';
import 'package:mobile_dashboard/store_config/withdrawal_account_config.dart';
import 'package:mobile_dashboard/widgets/header.dart';

class StoreConfigScreen extends StatefulWidget {
  const StoreConfigScreen({super.key});

  @override
  State<StoreConfigScreen> createState() => _StoreConfigScreenState();
}

class _StoreConfigScreenState extends State<StoreConfigScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      backgroundColor: Colors.grey,
      appBar: Header(
        title: 'Store Config',
      ),
      body: ListView(
        shrinkWrap: true,
        physics: AlwaysScrollableScrollPhysics(),
        padding: EdgeInsets.all(10),
        children: const [
          GeneralConfig(),
          SizedBox(
            height: 15,
          ),
          SellerPageConfig(),
          SizedBox(
            height: 15,
          ),
          WithdrawalAccountConfig()
        ],
      ),
      bottomNavigationBar: Container(
        padding: EdgeInsets.symmetric(horizontal: 10),
        child: TextButton(
            style: TextButton.styleFrom(
                backgroundColor: Colors.green,
                foregroundColor: Colors.white,
                padding: EdgeInsets.all(15),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10))),
            onPressed: () {},
            child: Text('Save Config')),
      ),
    ));
  }
}
