import 'package:flutter/cupertino.dart';

import '../../theme/app_colors.dart';

class MyTemplate extends StatelessWidget {
  const MyTemplate({super.key,required this.child});
  final Widget child;
  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppColors.backGroundColor,
      height: double.maxFinite,
      width: double.maxFinite,
      child: child,
    );
  }
}