# Minimal Ashes Pro.

Minimal Ashes Pro (MAP) is an ultra minimal portfolio website project built using Flutter.

## About

Originally designed to be used as a personal portfolio builder with support to update contents with
minimal effort. The code can be used to showcase your resume online, by just editing a single file (
content.dart).

![Sample Demo](sample.png?raw=true "Sample Demo")


## Customization

The layouts can also be easily rearranged or removed since they are grouped into sections.
Similarly, all text formatting and theme customizations can be done editing the theme.dart file. In
order to provide granular control over fine tuning individual elements, all entities are defined as
blocks which contains nested and reusable elements. The end result of this is easier access to
individual components, which on editing, reflects the changes everywhere in the page where they are
used, regardless of the layout.

Ah, layout! You are covered. Our MAP is compatible with mobile, desktop and tablet layouts and is
fully responsive. Although designed in dark theme, it also supports light theme. Just change the
themeMode and you are good to go.

## Usage Instructions

This project requires at least a minimal knowledge of setting up and using Flutter. Once Flutter is
setup (to develop for web), fork this repository and start making changes. There are many ways to
publish your portfolio page online and one of the fastest ways is to deploy it on Firebase Hosting
for free. To learn more, follow the official
guide [here](https://firebase.google.com/docs/hosting/quickstart) or
follow [this](https://medium.com/quick-code/deploy-host-flutter-web-with-firebase-hosting-6821bd060874)
link.

## Quick setup

1. Setup flutter (for web) on your computer
1. Clone this repository or download as zip
1. Run `flutter pub get`
1. Run `flutter run -d chrome` to open a debug preview of the website
1. Make changes to `constants.dart` or customize layout to your liking
1. To reload the page and preview the changes as and when you modify, hit `R' key while the terminal is focused
1. After finalising changes, run `flutter build web` to generate the source files (for hosting)
1. Built source files are located at /build/web folder inside your project repository
1. Configure firebase for hosting and choose the right path for the source files
1. Deploy your website using 'firebase deploy --only hosting'


## Open Source

This project is free of cost and can be used as you wish. If you find this project useful, please leave a star.

## Contact

Feel free to contact me at <hello@dhinesh.cc>

## License

This software is covered under MIT License
