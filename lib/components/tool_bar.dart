import 'package:first_app/styles/app_color.dart';
import 'package:first_app/styles/app_text.dart';
import 'package:flutter/material.dart';

class ToolBar extends StatelessWidget implements PreferredSizeWidget {
  final String title;
  final List<Widget>? actions;
  const ToolBar({super.key, required this.title, this.actions});

  @override
  Widget build(BuildContext context) {
    return AppBar(
        backgroundColor: Appcolors.background,
        title: Text(title,
        style: AppText.header1,
        ),
        centerTitle: false,
      actions: actions,
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(60);
}
