import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../../../core/theme/app_colors.dart';
import '../../../../core/utils/responsive.dart';
import '../../../../core/widgets/drawer/drawer_item.dart';
import '../riverpod/drawer_provider.dart';

class MyDrawer extends ConsumerWidget {
  const MyDrawer({
    super.key,
  });

  double? responsiveDevice({required BuildContext context}){
    if(Responsive.isMobile(context)){
      return MediaQuery.of(context).size.width * 0.6;
    }
    return MediaQuery.of(context).size.width * 0.3;
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final drawer = ref.watch(drawerProvider);
    return Container(
      height: MediaQuery.of(context).size.height,
      width: responsiveDevice(context: context),
      color: AppColors.drawerColor,
      child: ListView(
        children: [
           DrawerHeader(
             padding: const EdgeInsets.symmetric(vertical: 30),
              child: Container(
                  decoration: const BoxDecoration(
                    color: Colors.green,
                    shape: BoxShape.circle,
                    image: DecorationImage(
                      image: AssetImage('assets/images/my-profile.jpg')
                    )
                  ),
                  )),
          DrawerItem(
              onTap: () {
                ref.read(drawerProvider.notifier).onChangedIndex(0);
              },
              title: 'Profile',
              selected: drawer == 0),
          DrawerItem(
              onTap: () {
                ref.read(drawerProvider.notifier).onChangedIndex(1);
              },
              title: 'Resume',
              selected: drawer == 1),
          DrawerItem(
              onTap: () {
                ref.read(drawerProvider.notifier).onChangedIndex(2);
              },
              title: 'Projects',
              selected: drawer == 2),
          // DrawerItem(
          //     onTap: () {
          //       ref.read(drawerProvider.notifier).onChangedIndex(3);
          //     },
          //     title: 'Contact Me',
          //     selected: drawer == 3),
        ],
      ),
    );
  }
}