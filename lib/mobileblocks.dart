import 'package:flutter/material.dart';
import 'package:portfolio/content.dart';
import 'package:portfolio/widgets.dart';

class MobileLandingBlock extends StatelessWidget {
  const MobileLandingBlock({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: const [
        Avatar(Content.avatarPath),
        TitleCard(Content.name),
        SubtitleCard(Content.title),
        CaptionCard(Content.intro),
        CaptionCard(Content.summary),
        HintCard(Content.landingHint),
        ChevronDown(),
      ],
    );
  }
}

const double sectionBreakHeight = 100;

class MobileExpertiseBlock extends StatelessWidget {
  const MobileExpertiseBlock({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: const [
        SectionTitle('EXPERTISE'),
        SizedBox(height: 30),
        IconCaptionListBuilder(Content.expertise),
        SizedBox(height: sectionBreakHeight),
      ],
    );
  }
}

class MobileStatsBlock extends StatelessWidget {
  const MobileStatsBlock({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: const [
        SectionTitle('BY THE NUMBERS'),
        SizedBox(height: 30),
        StatsListBuilder(Content.numbers),
        SizedBox(height: sectionBreakHeight),
      ],
    );
  }
}

class MobileProgrammingBlock extends StatelessWidget {
  const MobileProgrammingBlock({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: const [
        SectionTitle('PROGRAMMING'),
        SizedBox(height: 60),
        ProgrammingListBuilder(Content.languages),
        SizedBox(height: sectionBreakHeight),
      ],
    );
  }
}

class MobileExperienceBlock extends StatelessWidget {
  const MobileExperienceBlock({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: const [
        SectionTitle('EXPERIENCE'),
        SizedBox(height: 30),
        ExperienceBuilder(Content.experience),
        SizedBox(height: sectionBreakHeight),
      ],
    );
  }
}

class MobileSkillsBlock extends StatelessWidget {
  const MobileSkillsBlock({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: const [
        SectionTitle('HANDS ON'),
        SizedBox(height: 30),
        SkillsBuilder(Content.handsOn),
        SizedBox(height: sectionBreakHeight),
      ],
    );
  }
}

class MobileEducationBlock extends StatelessWidget {
  const MobileEducationBlock({Key? key}) : super(key: key);

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

class MobileAwardsBlock extends StatelessWidget {
  const MobileAwardsBlock({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: const [
        SectionTitle('AWARDS'),
        SizedBox(height: 30),
        AwardsBuilder(Content.awards),
        SizedBox(height: sectionBreakHeight),
      ],
    );
  }
}

class MobileContactBlock extends StatelessWidget {
  const MobileContactBlock({Key? key}) : super(key: key);

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


class MobileFooterBlock extends StatelessWidget {
  const MobileFooterBlock({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const FooterBuilder(Content.footer);
  }
}
