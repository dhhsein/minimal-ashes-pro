import 'package:flutter/material.dart';
import 'package:portfolio/mobileblocks.dart';

class TabletHomePage extends StatelessWidget {
  const TabletHomePage({this.contentPadding = 0, Key? key}) : super(key: key);

  final double contentPadding;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: contentPadding),
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
      ),
    );
  }
}
