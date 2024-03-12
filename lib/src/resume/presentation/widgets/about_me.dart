import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../../core/utils/resposive.dart';

class AboutMe extends StatelessWidget {
  const AboutMe({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: Responsive.ContentPadding(context),vertical: Responsive.ContentPadding(context)),
      child: Row(
        children: [
          Flexible(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('About Me',style: TextStyle(fontWeight: FontWeight.bold,fontSize: Responsive.fontSizeTitle1(context),)),
                SizedBox(height: 10),
                 Text('In my professional role, I have successfully developed and deployed mobile applications using Flutter, ensuring a smooth and engaging user experience across different platforms. I am proficient in Dart programming language and have a strong understanding of mobile app architecture, state management, and UI/UX design principles. ',
                style: TextStyle(fontSize: Responsive.fontSizeContent(context)),),

              ],
            ),
          ),
        ],
      ),
    );
  }
}