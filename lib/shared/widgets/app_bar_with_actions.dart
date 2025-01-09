import 'package:flutter/material.dart';

class AppBarWithActions extends StatelessWidget implements PreferredSizeWidget {
  final String title;
  final List<Widget> actions;

  const AppBarWithActions({
    Key? key,
    required this.title,
    this.actions = const [],
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text(title),
      actions: actions,
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);
}
