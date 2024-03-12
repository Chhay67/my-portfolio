import 'package:chhay_portfulio/core/theme/app_colors.dart';
import 'package:flutter/material.dart';
import '../../../../core/utils/resposive.dart';
import '../widgets/about_me.dart';

class ResumePage extends StatelessWidget {
  const ResumePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: double.maxFinite,
      width: double.maxFinite,
      child: SingleChildScrollView(
        physics: AlwaysScrollableScrollPhysics(),
        child: Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            AboutMe(),
            Container(
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
                        EducationItem(
                          title: 'Flutter Mobile Development',
                          description: '2023 Completed 2 Flutter courses at Udemy.com',
                        ),
                        EducationItem(
                          title: 'Flutter Mobile Development',
                          description: '2022 at Center of Science and Technology Advanced Development - CSTAD',
                        ),
                        EducationItem(
                          title: 'Bachelor Degree of Computer Science',
                          description: '2019 to 2023 at Royal University of Phnom Penh, Phnom Penh, Cambodia',
                          isLastChild: true,
                        ),
                      ],
                    ),
                  ),

                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

class EducationItem extends StatelessWidget {
  const EducationItem({
    super.key,
    required this.title,
    required this.description,
    this.isLastChild = false,
  });
  final bool isLastChild;
  final String title;
  final String description;
  @override
  Widget build(BuildContext context) {
    return OrigChildWH(
      builder: (context, size, child) {
        return Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                Container(
                  margin: EdgeInsets.only(right: 10),
                  width: 10,height: 10,
                  decoration: BoxDecoration(
                      color: Colors.blueGrey,
                      borderRadius: BorderRadius.circular(6)
                  ),
                ),
                if(!isLastChild)
                CustomPaint(
                  size: Size(10, size.height),
                  painter: VerticalLine(),
                ),
              ],
            ),

            Flexible(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(title,style: TextStyle(color: AppColors.textColor,fontSize:Responsive.fontSizeContent(context),fontWeight: FontWeight.w500 )),
                  SizedBox(height: 10),
                  Text(description,style: TextStyle(color:  Colors.black54,fontSize: Responsive.fontSizeContent(context),fontWeight: FontWeight.w300),),
                ],
              ),
            )
          ],
        );
      },
    );
  }
}




class OrigChildWH extends StatelessWidget {
  final Widget Function(BuildContext context, Size size, Widget? child) builder;
  final Widget? child;
  const OrigChildWH({
    Key? key,
    required this.builder,
    this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return OrientationBuilder(builder: (context, orientation) {
      return ChildSizeNotifier(builder: builder);
    });
  }
}

class ChildSizeNotifier extends StatelessWidget {
  final ValueNotifier<Size> notifier = ValueNotifier(const Size(0, 0));
  final Widget Function(BuildContext context, Size size, Widget? child) builder;
  final Widget? child;
  ChildSizeNotifier({
    Key? key,
    required this.builder,
    this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback(
          (_) {
        notifier.value = (context.findRenderObject() as RenderBox).size;
      },
    );
    return ValueListenableBuilder(
      valueListenable: notifier,
      builder: builder,
      child: child,
    );
  }
}


class VerticalLine extends CustomPainter {


  @override
  void paint(Canvas canvas, Size size) {
    Paint paint = Paint();
    paint.color =  Colors.blueGrey;
    paint.strokeWidth = 2;
    paint.strokeCap = StrokeCap.square;

    Offset startingOffset = Offset(0 , 0);
    Offset endingOffset = Offset(0,size.height);

    canvas.drawLine(startingOffset, endingOffset, paint);

  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return false;
  }
}