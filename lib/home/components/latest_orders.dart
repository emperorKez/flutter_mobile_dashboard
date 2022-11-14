import 'package:flutter/material.dart';

class LatestOrders extends StatelessWidget {
  LatestOrders({Key? key}) : super(key: key);

  final List<Map<String, String>> listTable = [
    {"date": "Nov 07, 2022", "customer": "Bisi Ademola", "total": "2000"},
    {"date": "sep 19, 2022", "customer": "Nnenna Akin", "total": "550"},
    {"date": "Mar 22, 2022", "customer": "Musa Alabi", "total": "2042"},
    {"date": "Jan 14, 2022", "customer": "Michael Andrew", "total": "115"}
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(10)),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(15),
            child: Text('Last Orders'),
          ),
          DataTable(
            //headingRowHeight: 50,
            //headingTextStyle: TextStyle(overflow: TextOverflow.visible),
            columns: const [
              DataColumn(label: Text('Purchase Date')),
              DataColumn(label: Text('Customer')),
              DataColumn(label: Text('Grand Total'))
            ],
            rows: listTable
                .map((e) => DataRow(cells: [
                      DataCell(Text(e['date']!)),
                      DataCell(Text(e['customer']!)),
                      DataCell(Text(e['total']!)),
                    ]))
                .toList(),
          )
        ],
      ),
    );
  }
}
