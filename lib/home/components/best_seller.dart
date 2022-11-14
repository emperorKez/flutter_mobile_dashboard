import 'package:flutter/material.dart';

class BestSeller extends StatelessWidget {
  BestSeller({Key? key}) : super(key: key);

  List<Map<String, String>> listTable = [
    {"name": "product 1", "price": "\$25", "quantity": "2"},
    {"name": "product 2", "price": "\$200", "quantity": "5"},
    {"name": "product 3", "price": "\$500", "quantity": "20"},
    {"name": "product 4", "price": "\$50", "quantity": "1"}
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: Color.fromARGB(255, 16, 127, 155),
          borderRadius: BorderRadius.circular(10)),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(15),
            child: Text('Bestseller'),
          ),
          DataTable(
            decoration: BoxDecoration(
                color: Colors.green, borderRadius: BorderRadius.circular(10)),
            headingRowColor: MaterialStateProperty.all(Colors.amber),
            columns: const [
              DataColumn(label: Text('Product name')),
              DataColumn(label: Text('Price')),
              DataColumn(label: Text('Quantity'))
            ],
            rows: listTable
                .map((e) => DataRow(cells: [
                      DataCell(Text(e['name']!)),
                      DataCell(Text(e['price']!)),
                      DataCell(Text(e['quantity']!)),
                    ]))
                .toList(),
          )
        ],
      ),
    );
  }
}
