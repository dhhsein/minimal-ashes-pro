import 'package:flutter/material.dart';
import 'package:portfolio/theme.dart';
import 'package:percent_indicator/percent_indicator.dart';

class Avatar extends StatelessWidget {
  const Avatar(this.path, {Key? key}) : super(key: key);

  final String path;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 40, top: 10, right: 40, bottom: 10),
      child: SizedBox(
        height: 250,
        width: 250,
        child: Image.asset(path),
      ),
    );
  }
}

class TitleCard extends StatelessWidget {
  const TitleCard(this.text, {Key? key}) : super(key: key);
  final String text;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(left: 30, top: 10, right: 40, bottom: 10),
      width: double.maxFinite,
      child: Text(text, style: titleStyle, softWrap: true),
    );
  }
}

class SubtitleCard extends StatelessWidget {
  const SubtitleCard(this.text, {Key? key}) : super(key: key);
  final String text;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(left: 30, top: 10, right: 40, bottom: 10),
      width: double.maxFinite,
      child: Text(text, style: subtitleStyle, softWrap: true),
    );
  }
}

class CaptionCard extends StatelessWidget {
  const CaptionCard(this.text, {Key? key}) : super(key: key);
  final String text;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(left: 30, top: 10, right: 30, bottom: 40),
      width: double.maxFinite,
      child: Text(text, style: captionStyle, softWrap: true),
    );
  }
}

class HintCard extends StatelessWidget {
  const HintCard(this.text, {Key? key}) : super(key: key);
  final String text;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(left: 30, top: 10, right: 30, bottom: 20),
      width: double.maxFinite,
      child: Text(text,
          style: hintStyle, softWrap: true, textAlign: TextAlign.center),
    );
  }
}

class ChevronDown extends StatelessWidget {
  const ChevronDown({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(left: 30, top: 10, right: 30, bottom: 80),
      width: double.maxFinite,
      child: RotatedBox(
        quarterTurns: 1,
        child: Icon(Icons.chevron_right, size: 100, color: colorBackdrop),
      ),
    );
  }
}

class SectionTitle extends StatelessWidget {
  const SectionTitle(this.text, {Key? key}) : super(key: key);
  final String text;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(left: 30, top: 10, right: 40, bottom: 10),
      child: Text(
        text,
        style: subtitleStyle,
        softWrap: true,
        textAlign: TextAlign.center,
      ),
    );
  }
}

class IconCaptionListBuilder extends StatelessWidget {
  const IconCaptionListBuilder(this.list, {Key? key}) : super(key: key);

  final List<List<String>> list;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.maxFinite,
      child: ListView.builder(
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          itemCount: list.length,
          itemBuilder: (context, index) {
            return IconCaption(list[index]);
          }),
    );
  }
}

class IconCaption extends StatelessWidget {
  const IconCaption(this.item, {Key? key, this.enableFolding = false})
      : super(key: key);

  final List<String> item;
  final bool enableFolding;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(30.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image(
            image: AssetImage(item[1]),
            height: 50,
            width: 50,
            color: colorText,
          ),
          const SizedBox(height: 15),
          enableFolding
              ? SizedBox(
                  width: 150,
                  child: Text(
                    item[0],
                    style: captionStyle,
                    softWrap: true,
                    textAlign: TextAlign.center,
                  ),
                )
              : Text(item[0], style: captionStyle, softWrap: true),
        ],
      ),
    );
  }
}

class IconCaptionGridBuilder extends StatelessWidget {
  const IconCaptionGridBuilder(this.list, {Key? key}) : super(key: key);

  final List<List<String>> list;

  @override
  Widget build(BuildContext context) {
    const int elementsPerRow = 3;

    // get number of rows - ceil gets a full row for trailing elements in list.
    int numRows = (list.length / elementsPerRow.toDouble()).ceil();

    List<List<int>> indexesForRows = [];

    for (int i = 0; i < numRows - 1; i++) {
      // create index pairs (start, stop) to splice the list into rows
      // except for the last row that might not have a perfect multiple
      indexesForRows.add([i * elementsPerRow, ((i + 1) * elementsPerRow)]);
    }
    // create special index pair for last row
    indexesForRows.add([(numRows - 1) * elementsPerRow, list.length]);

    // build the rows using Listview.builder and indexesForRows

    return SizedBox(
      width: 1200,
      height: 440,
      child: ListView.builder(
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          itemCount: indexesForRows.length,
          itemBuilder: (context, index) {
            return IconCaptionRow(list
                .getRange(indexesForRows[index][0], indexesForRows[index][1])
                .toList());
          }),
    );
  }
}

class IconCaptionRow extends StatelessWidget {
  const IconCaptionRow(this.list, {Key? key}) : super(key: key);

  final List<List<String>> list;

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      height: 220,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          itemCount: list.length,
          itemBuilder: (context, index) {
            return IconCaption(list[index], enableFolding: true);
          }),
    );
  }
}

class StatsListBuilder extends StatelessWidget {
  const StatsListBuilder(this.list, {Key? key}) : super(key: key);

  final List<List<String>> list;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.maxFinite,
      child: ListView.builder(
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          itemCount: list.length,
          itemBuilder: (context, index) {
            return StatsElement(list[index]);
          }),
    );
  }
}

class StatsRowBuilder extends StatelessWidget {
  const StatsRowBuilder(this.list, {Key? key}) : super(key: key);

  final List<List<String>> list;

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      height: 200,
      width: double.maxFinite,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          itemCount: list.length,
          itemBuilder: (context, index) {
            return StatsElement(list[index], enableFolding: true);
          }),
    );
  }
}

class StatsElement extends StatelessWidget {
  const StatsElement(this.item, {Key? key, this.enableFolding = false})
      : super(key: key);

  final List<String> item;
  final bool enableFolding;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(item[0] + '+', style: titleStyle),
          const SizedBox(height: 10),
          enableFolding
              ? SizedBox(
                  width: 200,
                  child: Text(item[1],
                      style: captionStyle,
                      softWrap: true,
                      textAlign: TextAlign.center),
                )
              : Text(item[1], style: captionStyle, softWrap: true),
        ],
      ),
    );
  }
}

class ProgrammingListBuilder extends StatelessWidget {
  const ProgrammingListBuilder(this.list, {Key? key, this.stacked = true})
      : super(key: key);

  final List<List<String>> list;
  final bool stacked;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.maxFinite,
      child: ListView.builder(
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          itemCount: list.length,
          itemBuilder: (context, index) {
            return stacked
                ? ProgrammingVerticalElement(list[index])
                : ProgrammingHorizontalElement(list[index]);
          }),
    );
  }
}

class ProgrammingHorizontalElement extends StatelessWidget {
  const ProgrammingHorizontalElement(this.item, {Key? key}) : super(key: key);

  final List<String> item;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 40),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const SizedBox(width: 200),
          SizedBox(
            width: 300,
            child: LinearPercentIndicator(
              lineHeight: 15.0,
              percent: double.parse(item[0]) / 100,
              barRadius: const Radius.circular(10),
              progressColor: colorPassive,
              backgroundColor: colorBackdrop,
            ),
          ),
          const SizedBox(width: 10),
          Text(item[1], style: captionStyle, softWrap: true),
        ],
      ),
    );
  }
}

class ProgrammingVerticalElement extends StatelessWidget {
  const ProgrammingVerticalElement(this.item, {Key? key}) : super(key: key);

  final List<String> item;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 40),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30),
            child: LinearPercentIndicator(
              lineHeight: 15.0,
              percent: double.parse(item[0]) / 100,
              barRadius: const Radius.circular(10),
              progressColor: colorPassive,
              backgroundColor: colorBackdrop,
            ),
          ),
          const SizedBox(height: 10),
          Text(item[1], style: captionStyle, softWrap: true),
        ],
      ),
    );
  }
}

class ExperienceBuilder extends StatelessWidget {
  const ExperienceBuilder(this.list, {Key? key, this.maintainColumn = false})
      : super(key: key);

  final List<Map<String, dynamic>> list;
  final bool maintainColumn;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.maxFinite,
      child: ListView.builder(
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          itemCount: list.length,
          itemBuilder: (context, index) {
            return Padding(
              padding:
                  EdgeInsets.symmetric(horizontal: maintainColumn ? 200 : 0),
              child: ExperienceElement(list[index]),
            );
          }),
    );
  }
}

class ExperienceElement extends StatelessWidget {
  const ExperienceElement(this.item, {Key? key}) : super(key: key);

  final Map<String, dynamic> item;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 30),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          if (item['company'] != '')
            Text(item['company'], style: passiveCaptionStyle, softWrap: true),
          const SizedBox(height: 10),
          Text(item['designation'], style: headingStyle, softWrap: true),
          const SizedBox(height: 5),
          Text(item['joined'], style: hintStyle, softWrap: true),
          const SizedBox(height: 5),
          BulletsBuilder(item['contribution']),
        ],
      ),
    );
  }
}

class SkillsBuilder extends StatelessWidget {
  const SkillsBuilder(this.list, {Key? key, this.maintainColumn = false})
      : super(key: key);

  final List<Map<String, String>> list;
  final bool maintainColumn;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.maxFinite,
      child: ListView.builder(
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          itemCount: list.length,
          itemBuilder: (context, index) {
            return Padding(
              padding:
                  EdgeInsets.symmetric(horizontal: maintainColumn ? 200 : 0),
              child: SkillElement(list[index]),
            );
          }),
    );
  }
}

class SkillElement extends StatelessWidget {
  const SkillElement(this.item, {Key? key}) : super(key: key);

  final Map<String, String> item;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 30),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(item['title'] ?? '-', style: headingStyle, softWrap: true),
          const SizedBox(height: 10),
          Text(item['keywords'] ?? '-', style: bodyStyle, softWrap: true),
        ],
      ),
    );
  }
}

class EducationBuilder extends StatelessWidget {
  const EducationBuilder(this.list, {Key? key}) : super(key: key);

  final List<Map<String, String>> list;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.maxFinite,
      child: ListView.builder(
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          itemCount: list.length,
          itemBuilder: (context, index) {
            return EducationElement(list[index]);
          }),
    );
  }
}

class EducationElement extends StatelessWidget {
  const EducationElement(this.item, {Key? key}) : super(key: key);

  final Map<String, String> item;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 30),
      child: Column(
        children: [
          Text(item['degree'] ?? '-', style: headingStyle, softWrap: true),
          const SizedBox(height: 10),
          Text(item['course'] ?? '-',
              style: passiveCaptionStyle, softWrap: true),
          const SizedBox(height: 10),
          Text(item['university'] ?? '-', style: captionStyle, softWrap: true),
        ],
      ),
    );
  }
}

class AwardsBuilder extends StatelessWidget {
  const AwardsBuilder(this.list, {Key? key, this.maintainColumn = false})
      : super(key: key);

  final List<Map<String, dynamic>> list;
  final bool maintainColumn;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.maxFinite,
      child: ListView.builder(
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          itemCount: list.length,
          itemBuilder: (context, index) {
            return Padding(
              padding:
                  EdgeInsets.symmetric(horizontal: maintainColumn ? 200 : 0),
              child: AwardsElement(list[index]),
            );
          }),
    );
  }
}

class AwardsElement extends StatelessWidget {
  const AwardsElement(this.item, {Key? key}) : super(key: key);

  final Map<String, dynamic> item;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 30),
      child: Column(
        children: [
          Text(item['title'], style: headingStyle, softWrap: true),
          const SizedBox(height: 10),
          BulletsBuilder(item['description']),
        ],
      ),
    );
  }
}

class BulletsBuilder extends StatelessWidget {
  const BulletsBuilder(this.list, {Key? key}) : super(key: key);

  final List<String> list;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.maxFinite,
      child: ListView.builder(
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          itemCount: list.length,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.only(bottom: 10),
              child: Text(list[index], style: bodyStyle, softWrap: true),
            );
          }),
    );
  }
}

class ContactBuilder extends StatelessWidget {
  const ContactBuilder(this.item, {Key? key}) : super(key: key);

  final Map<String, String> item;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 50),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Text(
              item['info'] ?? '-',
              style: bodyStyle,
              softWrap: true,
              textAlign: TextAlign.center,
            ),
          ),
          const SizedBox(height: 10),
          Text(item['email'] ?? '-', style: headingStyle, softWrap: true),
        ],
      ),
    );
  }
}

class FooterBuilder extends StatelessWidget {
  const FooterBuilder(this.item, {Key? key}) : super(key: key);

  final Map<String, String> item;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
      child: Column(
        children: [
          Text(item['website'] ?? '-', style: hintBoldStyle, softWrap: true),
          const SizedBox(height: 10),
          Text(
            item['copyright'] ?? '-',
            style: hintStyle,
            softWrap: true,
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}
