import 'package:chhay_portfulio/src/resume/presentation/widgets/education_detail.dart';
import 'package:chhay_portfulio/src/resume/presentation/widgets/experience_detail.dart';
import 'package:flutter/material.dart';
import '../../../../core/widgets/template/my_template.dart';
import '../widgets/about_me.dart';
import '../widgets/skill_detail.dart';

class ResumePage extends StatelessWidget {
  const ResumePage({super.key});

  @override
  Widget build(BuildContext context) {
    return MyTemplate(
      child: SingleChildScrollView(
        physics: AlwaysScrollableScrollPhysics(),
        child: Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            AboutMe(),
            EducationDetail(),
            ExperienceDetail(),
            SkillDetail()
          ],
        ),
      ),
    );

  }
}










