import 'package:chhay_portfulio/core/widgets/template/my_template.dart';
import 'package:flutter/material.dart';
import '../../../../core/utils/responsive.dart';
import '../widgets/contact_icon_button.dart';
import '../widgets/contact_social_media.dart';
import 'introduction_my_self_page.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return MyTemplate(
      child: Column(
        mainAxisSize: MainAxisSize.max,
        children: [
          const IntroduceMySelf(),
          ContactSocialMedia(
            contacts: [
              ContactIconButton(
                onTap: () {},
                icon: Icons.telegram_rounded,
              ),
              ContactIconButton(
                onTap: () {},
                customIcon: Padding(
                  padding: const EdgeInsets.all(4.0),
                  child: Image.asset('assets/images/git-logo.png',
                      width: Responsive.IconSize(context) - 10,
                      height: Responsive.IconSize(context) - 10,
                      scale: 1),
                ),
              ),
              ContactIconButton(
                onTap: () {},
                icon: Icons.email_outlined,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
