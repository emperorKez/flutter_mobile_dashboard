import 'package:flutter/material.dart';
import 'package:mobile_dashboard/widgets/header.dart';

class Orders extends StatelessWidget {
  const Orders({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: Header(
        title: 'Orders',
      ),
      body: ListView.builder(
          padding: EdgeInsets.symmetric(horizontal: 10),
          itemCount: 5,
          itemBuilder: (context, index) {
            return orderCard();
          }),
    ));
  }

  Widget orderCard() {
    return Card();
  }
}
