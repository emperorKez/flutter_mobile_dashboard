import 'package:flutter/material.dart';
import 'package:mobile_dashboard/product/add_product.dart';

import '../../product/manage_products.dart';
import '../../store_config/config_screen.dart';

class HomeDrawer extends StatefulWidget {
  const HomeDrawer({super.key});

  @override
  State<HomeDrawer> createState() => _HomeDrawerState();
}

class _HomeDrawerState extends State<HomeDrawer> {
  bool isOpen = false;
  bool expanded = false;
  int selectedTile = -1;

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          Container(
              margin: EdgeInsets.zero,
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(color: Colors.blueGrey),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  CircleAvatar(
                    maxRadius: 25,
                    child: Icon(Icons.person),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      Text('Firstname'),
                      Icon(Icons.online_prediction_outlined)
                    ],
                  )
                ],
              )),

          // ExpansionTile(
          //   title: Text('Sales'),
          //   initiallyExpanded: 0 == selectedTile,
          //   onExpansionChanged: (expanded) {
          //     if (expanded) {
          //       setState(() {
          //         selectedTile = 0;
          //       });
          //     } else {
          //       setState(() {
          //         selectedTile = -1;
          //       });
          //     }

          //   },
          //   children: const [
          //     Text('child 1'),
          //     Text('child 1'),
          //     Text('child 1'),
          //   ],
          // ),
          ExpansionTile(
            title: Text('Sales'),
            childrenPadding: EdgeInsets.all(10),
            leading: Icon(Icons.paid_rounded),
            initiallyExpanded: isOpen,
            onExpansionChanged: (expanded) {
              setState(() {
                isOpen = false;
              });
              isOpen = expanded;
            },
            children: const [
              ListTile(
                title: Text('Orders'),
                leading: Icon(Icons.change_circle),
              ),
              ListTile(
                title: Text('Invoices'),
                leading: Icon(Icons.change_circle),
              ),
              ListTile(
                title: Text('Shipments'),
                leading: Icon(Icons.change_circle),
              ),
              ListTile(
                title: Text('Credit Memos'),
                leading: Icon(Icons.change_circle),
              ),
              ListTile(
                title: Text('Credit Transactions'),
                leading: Icon(Icons.change_circle),
              )
            ],
          ),
          ExpansionTile(
            title: Text('Catalog'),
            childrenPadding: EdgeInsets.all(10),
            leading: Icon(Icons.category),
            initiallyExpanded: isOpen,
            onExpansionChanged: (expanded) {
              setState(() {
                isOpen = false;
              });
              isOpen = expanded;
            },
            children:  [
              ListTile(
                title: Text('Add Products'),
                leading: Icon(Icons.change_circle),
                onTap: () => Navigator.push(context,
                MaterialPageRoute(builder: (context) => AddProductScreen())),
              ),
              ListTile(
                title: Text('Manage Products'),
                leading: Icon(Icons.change_circle),
                onTap: () => Navigator.push(context,
                MaterialPageRoute(builder: (context) => ManageProductsScreen()))
              ),
              ListTile(
                title: Text('Featured Products'),
                leading: Icon(Icons.change_circle),
              ),
            ],
          ),

          ExpansionTile(
            title: Text('CMS'),
            childrenPadding: EdgeInsets.all(10),
            leading: Icon(Icons.create),
            initiallyExpanded: isOpen,
            onExpansionChanged: (expanded) {
              setState(() {
                isOpen = false;
              });
              isOpen = expanded;
            },
            children: const [
              ListTile(
                title: Text('Manage Pages'),
                leading: Icon(Icons.change_circle),
              ),
              ListTile(
                title: Text('Manage Static Blocks'),
                leading: Icon(Icons.change_circle),
              ),
              ListTile(
                title: Text('Manage Frontend Application'),
                leading: Icon(Icons.change_circle),
              )
            ],
          ),
          ExpansionTile(
            title: Text('Report'),
            childrenPadding: EdgeInsets.all(10),
            leading: Icon(Icons.report),
            children: const [
              ListTile(
                title: Text('Sales'),
                leading: Icon(Icons.change_circle),
              ),
              ListTile(
                title: Text('Product'),
                leading: Icon(Icons.change_circle),
              )
            ],
          ),
          ExpansionTile(
            title: Text('Banner Manger'),
            childrenPadding: EdgeInsets.all(10),
            leading: Icon(Icons.category),
            children: const [
              ListTile(
                title: Text('Manage Products'),
                leading: Icon(Icons.change_circle),
              ),
              ListTile(
                title: Text('Featured Products'),
                leading: Icon(Icons.change_circle),
              ),
              ListTile(
                title: Text('Manage Ctegories'),
                leading: Icon(Icons.change_circle),
              )
            ],
          ),
          ExpansionTile(
            title: Text('Withdrawal'),
            childrenPadding: EdgeInsets.all(10),
            leading: Icon(Icons.category),
            children: const [
              ListTile(
                title: Text('Withdraw'),
                leading: Icon(Icons.change_circle),
              ),
              ListTile(
                title: Text('Withdrawal History'),
                leading: Icon(Icons.change_circle),
              ),
              ListTile(
                title: Text('Credit Transactions'),
                leading: Icon(Icons.change_circle),
              )
            ],
          ),
          ListTile(
            title: Text('Messages'),
            leading: Icon(Icons.change_circle),
          ),
          ListTile(
            title: Text('Configuration'),
            leading: Icon(Icons.settings),
            onTap: () => Navigator.push(context,
                MaterialPageRoute(builder: (context) => StoreConfigScreen())),
          ),
          ListTile(
            title: Text('Logout'),
            leading: Icon(Icons.logout_sharp),
          ),
        ],
      ),
    );
  }
}
