import 'package:flutter/material.dart';
import 'package:portfolio/desktopblocks.dart';

class DesktopHomePage extends StatelessWidget {
  const DesktopHomePage({this.contentPadding = 0, Key? key}) : super(key: key);

  final double contentPadding;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: contentPadding),
          child: Column(
            children: const [
              DesktopLandingBlock(),
              DesktopExpertiseBlock(),
              DesktopStatsBlock(),
              DesktopProgrammingBlock(),
              DesktopExperienceBlock(),
              DesktopSkillsBlock(),
              DesktopEducationBlock(),
              DesktopAwardsBlock(),
              DesktopContactBlock(),
              DesktopFooterBlock(),
            ],
          ),
        ),
      ),
    );
  }
}
