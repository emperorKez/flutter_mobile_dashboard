import 'package:badges/badges.dart';
import 'package:flutter/material.dart';

class Header extends StatelessWidget implements PreferredSizeWidget {
  final String title;
  const Header({required this.title, super.key});

  @override
  Size get preferredSize => Size.fromHeight(60.0);

  @override
  PreferredSizeWidget build(BuildContext context) {
    return AppBar(
      title: Text(title),
      centerTitle: true,
      actions: [
        badgeIcon('0', Colors.greenAccent, Icons.mail),
        badgeIcon('1', Colors.amber, Icons.notifications),
      ],
    );
  }

  Widget badgeIcon(content, color, icon) {
    return Badge(
      badgeContent: Text(
        content,
        style: TextStyle(fontSize: 8),
      ),
      badgeColor: color,
      shape: BadgeShape.square,
      borderRadius: BorderRadius.circular(3),
      position: BadgePosition.topEnd(top: 5, end: 5),
      child: IconButton(onPressed: () {}, icon: Icon(icon)),
    );
  }
}
