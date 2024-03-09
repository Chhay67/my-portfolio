import 'package:flutter/material.dart';

class MyAppBar extends StatelessWidget implements PreferredSizeWidget {
  const MyAppBar({
    super.key,
    this.backgroundColor,
    this.elevation,
    this.centerTitle = false,
    this.leadingWidth = 40,
    this.bottom,
    this.leading,
    this.showLeading = false,
    this.iconColor,
    this.onPressed,
    this.title,
    this.action = const [],
    this.toolbarHeight,
  });
  final Color? backgroundColor;
  final double? elevation;
  final bool centerTitle;
  final double leadingWidth;
  final PreferredSizeWidget? bottom;
  final Widget? leading;
  final bool showLeading;
  final Color? iconColor;
  final Function()? onPressed;

  final Widget? title;
  final List<Widget>? action;
  final double? toolbarHeight;
  @override
  Widget build(BuildContext context) {
    return AppBar(
      leading: leading,
      title: title,
      backgroundColor: backgroundColor,
      elevation: elevation,
      centerTitle: centerTitle,
      bottom: bottom,
      actions: action,
      toolbarHeight: toolbarHeight,

    );
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => const Size(double.maxFinite, kToolbarHeight);
}
