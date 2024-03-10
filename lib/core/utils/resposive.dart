import 'package:flutter/material.dart';

class Responsive {
  static bool isMobile(BuildContext context) =>
      MediaQuery.of(context).size.width < 850;

  static bool isTablet(BuildContext context) =>
      MediaQuery.of(context).size.width < 1100 &&
          MediaQuery.of(context).size.width >= 850;

  static bool isDesktop(BuildContext context) =>
      MediaQuery.of(context).size.width >= 1100;

  static double fontSizeTitle(BuildContext context ){
    if(MediaQuery.of(context).size.width < 850){
      print('26');
      return 26;
    } else if(MediaQuery.of(context).size.width < 1100){
      print('36');
      return 36;
    }else {
      print('46');
      return 46;
    }
  }
  static double IconSize(BuildContext context ){
    if(MediaQuery.of(context).size.width < 850){
      print('icon 40');
      return 40;
    }
    if(MediaQuery.of(context).size.width < 1100){
      print('icon 60');
      return 60;
    }
    print('icon 80');
    return 80;
  }
  static double ContentPadding(BuildContext context ){
    if(MediaQuery.of(context).size.width < 850){
      print('icon 40');
      return 40;
    }
    if(MediaQuery.of(context).size.width < 1100){
      print('icon 60');
      return 60;
    }
    print('icon 80');
    return 80;
  }

}