import 'package:flutter/material.dart';

import '../../../../core/theme/app_colors.dart';
import '../../../../core/utils/resposive.dart';

class ContactIconButton extends StatelessWidget {
  const ContactIconButton({
    super.key,
    required this.onTap,
    this.icon,
    this.customIcon
  });
  final IconData? icon;
  final Widget? customIcon;
  final Function() onTap;
  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16)
      ),
      color: AppColors.backGroundColor,
      elevation: 0,
      child: InkWell(
        borderRadius:BorderRadius.circular(16),
        onTap: onTap,
        child: customIcon ?? Icon(icon,size: Responsive.IconSize(context)),
      ),
    );
  }
}