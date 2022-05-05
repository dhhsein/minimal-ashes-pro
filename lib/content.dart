class Content {
  static const String name = 'Johnathan Doe';

  static const String title = 'Senior Software Engineer';

  static const String avatarPath = 'assets/avatar_emoji.png';

  static const String email = 'johndoe@example.cc';

  static const String website = 'www.example.cc';

  static const String intro =
      'Hello world! I am John Doe and I am a senior software engineer at Pineapple. Experienced Software Developer with expertise in design, installation, testing and maintenance of software systems.';

  static const String summary =
      'Equipped with a diverse and promising skill-set. Proficient in various platforms, languages, and embedded systems. Experienced with cutting-edge development tools and procedures. Able to effectively self-manage during independent projects, as well as collaborate as part of a productive team.';

  static const String landingHint =
      'Get in touch with me at $email \nor scroll down to know more';

  static const Map<String, String> contact = {
    'info': 'Please reach out to me by email',
    'email': email,
  };

  static const Map<String, String> footer = {
    'website': website,
    'copyright':
        'Minimal Ashes Pro. Designed by Dhinesh Ramasamy.\nAll Rights Reserved. Copyright (c) 2022 Dhinesh Ramasamy',
  };

  static const List<List<String>> expertise = [
    ['Fruitful Software', 'assets/code.png'],
    ['Wireless Tech', 'assets/bluetooth.png'],
    ['Fruit on a Chip', 'assets/embedded.png'],
    ['Fruit Analysis', 'assets/algorithms.png'],
    ['Sorting Algorithms', 'assets/work.png'],
    // ['Content Writing', 'assets/document.png'],
    ['Packaging Design', 'assets/design.png'],
  ];

  static const List<List<String>> numbers = [
    ['5000', 'HOURS OF WORK'],
    ['9', 'YEARS OF EXPERIENCE'],
    ['21', 'AWARDS'],
  ];

  static const List<List<String>> languages = [
    ['96', 'Python'],
    ['61', 'Java'],
    ['83', 'Coffee'],
    ['94', 'JavaScript'],
    ['76', 'Dart'],
    ['73', 'Ruby'],
    ['72', 'Rust'],
  ];
  static const List<Map<String, dynamic>> experience = [
    {
      'company': 'FIRST COMPANY',
      'designation': 'SENIOR SOFTWARE ENGINEER',
      'joined': 'Aug 2020 - Aug 2021',
      'contribution': [
        'Collaborated productively with product team to understand requirements and business specifications around portfolio management, analytics and risk.',
        'Coded software updates and alterations based on detailed design specifications.',
        'Developed and presented findings and solutions to audiences including senior executives and stakeholders.'
      ],
    },
    {
      'company': 'SECOND COMPANY',
      'designation': 'MID LEVEL SOFTWARE ENGINEER',
      'joined': 'Jan 2018 - March 2021',
      'contribution': [
        'Solved complex problems using the latest in cloud, mobile, and web technologies.',
        'Developed and presented findings and solutions to audiences including senior executives and stakeholders.',
      ],
    },
    {
      'company': 'THIRD COMPANY',
      'designation': 'JUNIOR SOFTWARE ENGINEER',
      'joined': 'Jan 2017',
      'contribution': [
        'Implemented and updated application modules under the direction of Senior Software Developers.',
        'Performed automated testing tasks and developed complex features routinely.',
      ],
    },
    {
      // leave blank to nest more positions in the same company
      'company': '',
      'designation': 'ASSISTANT SOFTWARE DEVELOPER',
      'joined': 'Jan 2016',
      'contribution': [
        'Worked at an independent level, while also serving as an effective and enthusiastic collaborator.',
        'Implemented and updated application modules under the direction of Senior Software Developers.',
      ],
    },
    {
      // leave blank to nest more positions in the same company
      'company': '',
      'designation': 'DEVELOPER INTERN',
      'joined': 'Jan 2015',
      'contribution': [
        'Implemented and updated application modules under the direction of Senior Software Developers.',
      ],
    },
  ];

  static const List<Map<String, String>> handsOn = [
    {
      'title': 'Software Development',
      'keywords':
          'Machine learning, Edge computing, Debugging strategies, Code optimisation, Power optimisation, OpenCV, Processing',
    },
    {
      'title': 'Frontend Development',
      'keywords':
          'Flutter, BLoC, MVC, ReactiveX, Android Studio, Reactive programming, State management',
    },
    {
      'title': 'Backend Development',
      'keywords':
          'Django, FastAPI, NoSQL, Postman, Firebase Tools, Pip package creation, Hosting services, PEP-8, Git',
    },
    {
      'title': 'Documentation',
      'keywords': 'Confluence, DrawIO, UML',
    },
    {
      'title': 'Design',
      'keywords':
          'Adobe XD, Photoshop, Illustrator, Figma, AutoDesk Sketchbook, Sketchup, Pixelmator Pro',
    },
    {
      'title': 'Project Management',
      'keywords': 'JIRA, Scrum, Kanban, Waterfall, Roadmaps',
    },
  ];

  static const List<Map<String, String>> education = [
    {
      'degree': 'Masters of Science',
      'course': 'Computer Science',
      'university': 'The Massachusetts Institute of Technology',
    }
  ];

  static const List<Map<String, dynamic>> awards = [
    {
      'title': 'YOUNG CODER AWARD 2016',
      'description': [
        'Implemented and updated application modules under the direction of Senior Software Developers',
        'Performed automated testing tasks and developed complex features routinely',
      ],
    },
  ];
}
