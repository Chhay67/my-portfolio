import 'package:flutter/material.dart';

class MyTemplate extends StatelessWidget {
  const MyTemplate({
    super.key,
    required this.children,
    required this.appBar
  });
  final List<Widget> children;
  final PreferredSizeWidget appBar;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar,
      body: Row(
        children: children,
      ),
    );
  }
}