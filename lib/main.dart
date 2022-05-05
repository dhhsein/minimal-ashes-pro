import 'package:flutter/material.dart';
import 'package:portfolio/desktop.dart';
import 'package:portfolio/mobile.dart';
import 'package:portfolio/tablet.dart';
import 'package:portfolio/theme.dart';
import 'package:responsive_builder/responsive_builder.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Portfolio',
      darkTheme: darkTheme,
      theme: lightTheme,
      themeMode: ThemeMode.dark,
      debugShowCheckedModeBanner: false,
      home: const HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ResponsiveBuilder(
      builder: (context, layout) {
        /* Handle Desktop Layout */

        if (layout.deviceScreenType == DeviceScreenType.desktop) {
          double extraScreenWidth = layout.screenSize.width -
              ResponsiveSizingConfig.instance.breakpoints.desktop;

          // Fix width to a min desktop width, and pad extra width with space
          return DesktopHomePage(contentPadding: extraScreenWidth / 2);
        }

        /* Handle Tablet Layout */

        else if (layout.deviceScreenType == DeviceScreenType.tablet) {
          double extraScreenWidth = layout.screenSize.width -
              ResponsiveSizingConfig.instance.breakpoints.tablet;

          // Fix width to a min tablet width, and pad extra width with space
          return TabletHomePage(contentPadding: extraScreenWidth / 2);
        }

        /* Handle Mobile Layout */

        else {
          return const MobileHomePage();
        }
      },
    );
  }
}
