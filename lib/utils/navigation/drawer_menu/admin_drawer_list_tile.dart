import 'package:flutter/material.dart';

class AdminDrawerListTile extends StatelessWidget {
  final String title;
  final IconData iconData;
  final VoidCallback onPress;
  final Color? tileColor;

  const AdminDrawerListTile(
      {Key? key, required this.title, required this.iconData, required this.onPress, this.tileColor})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      tileColor: tileColor,
      horizontalTitleGap: 0.0,
      onTap: onPress,
      leading: Icon(iconData),
      title: Text(
        title,
        style: const TextStyle(color: Colors.white54, fontSize: 16),
      ),
    );
  }
}
