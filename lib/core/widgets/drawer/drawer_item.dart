import 'package:flutter/material.dart';

import '../../theme/app_colors.dart';

class DrawerItem extends StatelessWidget {
  const DrawerItem({
    super.key,
    required this.onTap,
    required this.title,
    this.selected = false,
  });
  final Function() onTap;
  final String title;
  final bool selected;
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
      color: selected ? AppColors.selectedDrawerColor: AppColors.drawerColor,
      margin: const EdgeInsets.symmetric(horizontal: 12),
      child: InkWell(
        borderRadius: BorderRadius.circular(8),
        onTap: onTap,
        hoverColor: const Color(0xFFD3D6DE),
        child: Padding(
          padding: const EdgeInsets.all(12),
          child: Text(title),
        ),
      ),
    );
  }
}