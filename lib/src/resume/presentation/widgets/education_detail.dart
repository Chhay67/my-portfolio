import 'package:flutter/cupertino.dart';

import '../../../../core/utils/responsive.dart';
import 'timeline_item.dart';

class EducationDetail extends StatelessWidget {
  const EducationDetail({
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
                Text('Education',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: Responsive.fontSizeTitle1(context),
                    )),
                SizedBox(height: 10),
                TimeLineItem(
                  title: 'Flutter Mobile Development',
                  description: '2023 Completed 2 Flutter courses at Udemy.com',
                ),
                TimeLineItem(
                  title: 'Flutter Mobile Development',
                  description: '2022 at Center of Science and Technology Advanced Development - CSTAD',
                ),
                TimeLineItem(
                  title: 'Bachelor Degree of Computer Science',
                  description: '2019 to 2023 at Royal University of Phnom Penh, Phnom Penh, Cambodia',
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