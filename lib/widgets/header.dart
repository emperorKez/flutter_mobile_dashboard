import 'package:badges/badges.dart';
import 'package:flutter/material.dart';

class Header extends StatelessWidget implements PreferredSizeWidget {
  const Header({super.key});

  @override
  Size get preferredSize => Size.fromHeight(60.0);

  @override
  PreferredSizeWidget build(BuildContext context) {
    return AppBar(
      actions: [
        Badge(
          badgeContent: Text('0'),
          badgeColor: Colors.greenAccent,
          shape: BadgeShape.square,
          borderRadius: BorderRadius.circular(5),
          child: Icon(Icons.mail),
        ),
        SizedBox(width: 10,),
        Badge(
          badgeContent: Text('1',
          style: TextStyle(fontSize: 8),),
          badgeColor: Colors.amberAccent,
          shape: BadgeShape.square,
          borderRadius: BorderRadius.circular(3),
          child: Icon(Icons.notifications),
        ),
        SizedBox(width: 10,),
        PopupMenuButton(
          itemBuilder: (context) => [
            PopupMenuItem(
              value: 1,
              child: Row(
                children: const [
                  Icon(
                    Icons.money,
                    color: Colors.red,
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Text('withdraw')
                ],
              ),
            ),
            PopupMenuItem(
              value: 1,
              child: Row(
                children: const [
                  Icon(
                    Icons.money,
                    color: Colors.red,
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Text('withdraw')
                ],
              ),
            ),
          ],
          position: PopupMenuPosition.under ,
          //icon: Icon(Icons.money),
          //iconSize: 30,
          //offset: Offset.fromDirection(0, 20),
          child: Row(children: const[
Icon(Icons.person),
Icon(Icons.arrow_drop_down)
          ],)
        )
      ],
    );
  }
}
