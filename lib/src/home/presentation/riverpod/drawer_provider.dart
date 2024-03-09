import 'package:flutter_riverpod/flutter_riverpod.dart';

final drawerProvider = NotifierProvider<DrawerNotifier,int >(() {
  return DrawerNotifier();
});


class DrawerNotifier extends Notifier<int> {
  @override
  int build() {
    return 0;
  }

  void onChangedIndex(int index){
    state = index;
  }
}
