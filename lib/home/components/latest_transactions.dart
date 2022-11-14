import 'package:flutter/material.dart';

class LatestTransaction extends StatelessWidget {
  LatestTransaction({Key? key}) : super(key: key);

  final List<Map<String, String>> listTable = [
    {"date": "Nov 02, 2022", "type": "withdrawal", "amount": "200"},
    {"date": "Sept 15, 2022", "type": "withdrawal", "amount": "5000"},
    {"date": "April 04, 2022", "type": "commission", "amount": "20"},
    {"date": "Mar 21, 2022", "type": "commission", "amount": "75"}
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: Color.fromARGB(255, 16, 127, 155),
          borderRadius: BorderRadius.circular(10),
          border: Border.all(color: Colors.red)),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(15),
            child: Text('Latest Transactions'),
          ),
          DataTable(
            columns: const [
              DataColumn(label: Text('Created at')),
              DataColumn(label: Text('Type')),
              DataColumn(label: Text('Amount'))
            ],
            rows: listTable
                .map((e) => DataRow(cells: [
                      DataCell(Text(e['date']!)),
                      DataCell(Text(e['type']!)),
                      DataCell(Text(e['amount']!)),
                    ]))
                .toList(),
          )
        ],
      ),
    );
  }
}
