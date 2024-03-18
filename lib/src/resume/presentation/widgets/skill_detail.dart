
import 'package:chhay_portfulio/src/resume/presentation/widgets/timeline_item.dart';
import 'package:flutter/cupertino.dart';

import '../../../../core/utils/responsive.dart';

class SkillDetail extends StatelessWidget {
  const SkillDetail({
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
                Text('Skills',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: Responsive.fontSizeTitle1(context),
                    )),
                SizedBox(height: 10),
                TimeLineItem(
                  title: 'Flutter',
                  isLastChild: true, description: '',
                ),

              ],
            ),
          ),

        ],
      ),
    );
  }
}