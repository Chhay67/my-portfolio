import 'package:chhay_portfulio/core/widgets/app_bar/custom_app_bar.dart';
import 'package:chhay_portfulio/src/home/presentation/riverpod/drawer_provider.dart';
import 'package:chhay_portfulio/src/profile/presentation/page/profile_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../../core/utils/responsive.dart';
import '../../../projects/presentation/page/projects_page.dart';
import '../../../resume/presentation/page/resume_page.dart';
import 'drawer_page.dart';


class HomePage extends ConsumerStatefulWidget {
  const HomePage({super.key});

  @override
  ConsumerState createState() => _HomePageState();
}

class _HomePageState extends ConsumerState<HomePage> {
  final GlobalKey<ScaffoldState> _key = GlobalKey();

  final List<Widget> bodyOptions = [
    const ProfilePage(),
    const ResumePage(),
    const ProjectsPage(),
  ];// Creat
  @override
  Widget build(BuildContext context) {
    final drawer = ref.watch(drawerProvider);
    return Scaffold(
      key: _key,
      drawer: const MyDrawer(),
      appBar: Responsive.isTablet(context) || Responsive.isMobile(context)
          ? MyAppBar(
              elevation: 0.1,
              backgroundColor:  const Color(0xFFEBEEF4),
              title: const Text('Portfolio',style: TextStyle(color: Colors.black,fontSize: 20,fontWeight: FontWeight.w500,letterSpacing: 2),),
              centerTitle: true,
              leading: IconButton(

                onPressed: () {
                  _key.currentState!.openDrawer();
                },
                icon: const Icon(Icons.menu,color: Colors.black,),
              ),
            )
          : null,
      body: Row(
        children: [
          if (Responsive.isDesktop(context))
            const Expanded(
              flex: 1,
              child: MyDrawer(),
            ),
          Expanded(
            flex: 4,
            child: bodyOptions[drawer],
          ),
        ],
      ),
    );
  }
}



