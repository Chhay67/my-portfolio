
import 'package:flutter/cupertino.dart';

import '../../../../core/utils/responsive.dart';
import 'timeline_item.dart';

class ExperienceDetail extends StatelessWidget {
  const ExperienceDetail({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(
        left: Responsive.ContentPadding(context),
        right: Responsive.ContentPadding(context),
        bottom: Responsive.ContentPadding(context),
      ),
      child: Row(
        children: [
          Flexible(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Experience',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: Responsive.fontSizeTitle1(context),
                    )),
                SizedBox(height: 10),
                TimeLineItem(
                  title: 'Flutter Developer at Polygram Solutions',
                  description: 'currently',
                  isLastChild: true,
                ),

              ],
            ),
          ),

        ],
      ),
    );
  }
}