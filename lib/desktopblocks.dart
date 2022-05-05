import 'package:flutter/material.dart';
import 'package:portfolio/content.dart';
import 'package:portfolio/widgets.dart';

const double desktopSpacerTall = 100;
const double desktopSpacerShort = 40;

class DesktopLandingBlock extends StatelessWidget {
  const DesktopLandingBlock({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(height: desktopSpacerTall),
        const SizedBox(height: desktopSpacerTall),
        Row(
          children: [
            const Avatar(Content.avatarPath),
            Expanded(
              child: Column(
                children: const [
                  TitleCard(Content.name),
                  SubtitleCard(Content.title),
                  SizedBox(height: desktopSpacerShort),
                  CaptionCard(Content.intro),
                  CaptionCard(Content.summary),
                ],
              ),
            ),
          ],
        ),
        const SizedBox(height: desktopSpacerTall),
        const HintCard(Content.landingHint),
        const ChevronDown(),
        const SizedBox(height: desktopSpacerTall),
      ],
    );
  }
}

const double sectionBreakHeight = 100;

class DesktopExpertiseBlock extends StatelessWidget {
  const DesktopExpertiseBlock({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: const [
        SectionTitle('EXPERTISE'),
        SizedBox(height: sectionBreakHeight),
        IconCaptionGridBuilder(Content.expertise),
        SizedBox(height: sectionBreakHeight),
      ],
    );
  }
}

class DesktopStatsBlock extends StatelessWidget {
  const DesktopStatsBlock({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: const [
        SectionTitle('BY THE NUMBERS'),
        SizedBox(height: sectionBreakHeight),
        SizedBox(height: sectionBreakHeight),
        StatsRowBuilder(Content.numbers),
        SizedBox(height: sectionBreakHeight),
        SizedBox(height: sectionBreakHeight),
      ],
    );
  }
}

class DesktopProgrammingBlock extends StatelessWidget {
  const DesktopProgrammingBlock({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: const [
        SectionTitle('PROGRAMMING'),
        SizedBox(height: sectionBreakHeight),
        ProgrammingListBuilder(Content.languages, stacked: false),
        SizedBox(height: sectionBreakHeight),
      ],
    );
  }
}

class DesktopExperienceBlock extends StatelessWidget {
  const DesktopExperienceBlock({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: const [
        SectionTitle('EXPERIENCE'),
        SizedBox(height: 30),
        ExperienceBuilder(Content.experience, maintainColumn: true),
        SizedBox(height: sectionBreakHeight),
      ],
    );
  }
}

class DesktopSkillsBlock extends StatelessWidget {
  const DesktopSkillsBlock({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: const [
        SectionTitle('HANDS ON'),
        SizedBox(height: 30),
        SkillsBuilder(Content.handsOn, maintainColumn: true),
        SizedBox(height: sectionBreakHeight),
      ],
    );
  }
}

class DesktopEducationBlock extends StatelessWidget {
  const DesktopEducationBlock({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: const [
        SectionTitle('EDUCATION'),
        SizedBox(height: 30),
        EducationBuilder(Content.education),
        SizedBox(height: sectionBreakHeight),
      ],
    );
  }
}

class DesktopAwardsBlock extends StatelessWidget {
  const DesktopAwardsBlock({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: const [
        SectionTitle('AWARDS'),
        SizedBox(height: 30),
        AwardsBuilder(Content.awards, maintainColumn: true),
        SizedBox(height: sectionBreakHeight),
      ],
    );
  }
}

class DesktopContactBlock extends StatelessWidget {
  const DesktopContactBlock({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: const [
        SectionTitle('CONTACT'),
        SizedBox(height: 100),
        ContactBuilder(Content.contact),
        SizedBox(height: 300),
      ],
    );
  }
}

class DesktopFooterBlock extends StatelessWidget {
  const DesktopFooterBlock({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const FooterBuilder(Content.footer);
  }
}
