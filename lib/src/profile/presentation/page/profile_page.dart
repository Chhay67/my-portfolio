import 'package:chhay_portfulio/core/utils/resposive.dart';
import 'package:flutter/material.dart';

import '../../../../core/theme/app_colors.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: double.maxFinite,
      width: double.maxFinite,
      color: AppColors.backGroundColor,
      child: Column(
        mainAxisSize: MainAxisSize.max,
        children: [
          Expanded(child: const IntroduceMySelf()),
          Expanded(
            child: ContactSocialMedia(
              contacts: [
                ContactIconButton(
                  onTap: (){},
                  icon: Icons.telegram_rounded,
                ),
                const SizedBox(width: 30),
                ContactIconButton(
                  onTap: (){},
                  customIcon: Padding(
                    padding: const EdgeInsets.all(4.0),
                    child: Image.asset('assets/images/git-logo.png',width: Responsive.IconSize(context) - 10,height:Responsive.IconSize(context) - 10,scale: 1),
                  ),
                ),
                const SizedBox(width: 30),
                ContactIconButton(
                  onTap: (){},
                  icon: Icons.email_outlined,
                ),
              ],
            ),
          ),
          Text('Develop by Song kimchhay, using @Flutter.',textAlign: TextAlign.center,)
        ],
      ),
    );
  }
}

class ContactSocialMedia extends StatelessWidget {
  const ContactSocialMedia({
    super.key,
    required this.contacts
  });
  final List<Widget> contacts;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding:  EdgeInsets.symmetric(vertical:Responsive.isDesktop(context) ?50 : 10,horizontal: Responsive.isDesktop(context) ? 100 : 16),
      child: Wrap(
        children: contacts,
      ),
    );
  }
}

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

class IntroduceMySelf extends StatelessWidget {
  const IntroduceMySelf({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
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
          const Text('I\'m a mobile application developer in Flutter with over 2 years of experience on both development, teaching and management. I also has an experience with web applications and backend develop.'),
          const SizedBox(height: 10,),
        ],
      ),
    );
  }
}
