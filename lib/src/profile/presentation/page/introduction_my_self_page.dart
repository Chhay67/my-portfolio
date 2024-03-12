import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../../core/theme/app_colors.dart';
import '../../../../core/utils/resposive.dart';

class IntroduceMySelf extends StatelessWidget {
  const IntroduceMySelf({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        alignment: Alignment.center,
        padding: EdgeInsets.symmetric(horizontal: Responsive.ContentPadding(context)),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            RichText(
              text:  TextSpan(
                  text: 'S',
                  style: TextStyle(
                      color: Color(0xFF2E3440),
                      fontSize: Responsive.fontSizeTitle(context),
                      fontWeight: FontWeight.w900
                  ),
                  children: [
                    TextSpan(
                      text: 'ong',
                      style: TextStyle(
                        color: Colors.black38,
                        fontSize: Responsive.fontSizeTitle(context),
                      ),
                    ),
                    TextSpan(
                        text: ' Kimchhay',
                        style: TextStyle(fontWeight: FontWeight.bold,fontSize: Responsive.fontSizeTitle(context),)
                    )
                  ]
              ),
            ),
            Text('Mobile Application Developer',style: TextStyle(
                color: AppColors.textColor,
                fontSize:Responsive.fontSizeTitle(context),
                fontWeight: FontWeight.w900
            )),
            const SizedBox(height: 10,),
             Text('I am an experienced mobile application developer specializing in Flutter. I have a deep understanding of Dart programming language and extensive expertise in developing mobile apps using the Flutter framework. I am skilled in mobile app architecture, state management, and UI/UX design principles. I am dedicated to delivering high-quality Flutter applications that provide a smooth and engaging user experience across different platforms.',style: TextStyle(fontSize: Responsive.fontSizeContent(context)),),
            const SizedBox(height: 10,),
          ],
        ),
      ),
    );
  }
}
