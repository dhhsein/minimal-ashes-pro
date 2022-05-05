import 'package:flutter/material.dart';
import 'package:portfolio/mobileblocks.dart';


class MobileHomePage extends StatelessWidget {
  const MobileHomePage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: const [
            MobileLandingBlock(),
            MobileExpertiseBlock(),
            MobileStatsBlock(),
            MobileProgrammingBlock(),
            MobileExperienceBlock(),
            MobileSkillsBlock(),
            MobileEducationBlock(),
            MobileAwardsBlock(),
            MobileContactBlock(),
            MobileFooterBlock(),
          ],
        ),
      ),
    );
  }
}
