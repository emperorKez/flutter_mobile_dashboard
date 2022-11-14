import 'package:flutter/material.dart';

class RecentlyAddedProducts extends StatelessWidget {
  const RecentlyAddedProducts({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: Colors.red, borderRadius: BorderRadius.circular(10)),
      //padding: EdgeInsets.all(10),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(15),
            child: Text('Recently added Products'),
          ),
          ListView.builder(
              shrinkWrap: true,
              physics: ClampingScrollPhysics(),
              itemCount: 4,
              itemBuilder: (context, index) => ListTile(
                    leading: Image.asset(
                      'assets/images/product$index.jpg',
                      fit: BoxFit.contain,
                    ),
                    title: Text(
                        'this is the name of the product in question. here we place the name attribute'),
                    trailing: Container(
                        decoration: BoxDecoration(
                            color: Colors.green,
                            borderRadius: BorderRadius.circular(5)),
                        padding: EdgeInsets.all(3),
                        child: Text('subtitle')),
                  ))
        ],
      ),
    );
  }
}
