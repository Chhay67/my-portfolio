
import 'package:flutter/cupertino.dart';

import '../../../../core/utils/resposive.dart';

class ContactSocialMedia extends StatelessWidget {
  const ContactSocialMedia({
    super.key,
    required this.contacts
  });
  final List<Widget> contacts;
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        padding:  EdgeInsets.symmetric(vertical:Responsive.isDesktop(context) ?50 : 10,horizontal: Responsive.isDesktop(context) ? 100 : 16),
        child: Wrap(
          spacing: 30,
          children: contacts,
        ),
      ),
    );
  }
}