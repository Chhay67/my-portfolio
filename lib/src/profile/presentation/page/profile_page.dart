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
      child: Stack(
        children: [
          Positioned(
              left: Responsive.isDesktop(context) ? 30 : 12,
              top:  50,
              right: Responsive.isDesktop(context) ? 30 : 12,
              child: const IntroduceMySelf()),
          Center(
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
                    child: Image.asset('assets/images/git-logo.png',width: 70,height:70,scale: 1),
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
          const Positioned(
            right: 0,
            left: 0,
            bottom: 10,
            child: Text('Develop by Song kimchhay, using @Flutter.',textAlign: TextAlign.center),
          )
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
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
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
        child: customIcon ?? Icon(icon,size: 80),
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
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          RichText(
              text: const TextSpan(
                text: 'S',
                style: TextStyle(
                  color: Color(0xFF2E3440),
                  fontSize: 45,
                  fontWeight: FontWeight.w900
                ),
                children: [
                  TextSpan(
                    text: 'ong',
                    style: TextStyle(
                        color: Colors.black38
                    ),
                  ),
                  TextSpan(
                    text: ' Kimchhay',
                    style: TextStyle(fontWeight: FontWeight.bold)
                  )
                ]
              ),
          ),
          const Text('Mobile Application Developer',style: TextStyle(
              color: AppColors.textColor,
              fontSize: 32,
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
