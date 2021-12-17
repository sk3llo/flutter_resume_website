import 'package:flutter_resume_website/pages/home/components/job/components/components.dart';
import 'package:flutter_resume_website/utils/app_images.dart';

class AppConst {
  // Jobs
  static const listOfJobs = [
    const Job(
      imageAsset: AppImages.X1Logo,
      companyName: 'X1 Group',
      description: 'Dart/Flutter Developer',
    ),
    const Job(
      imageAsset: AppImages.catLogo,
      companyName: 'Caterpillar',
      description: 'Dart/Flutter Developer',
    ),
    const Job(
      imageAsset: AppImages.huckLogo,
      companyName: 'Huck Adventures',
      description: 'Dart/Flutter Developer',
    ),
  ];

  // Timers
  static const animDuration = const Duration(milliseconds: 750);

  // Text
  static const firstName = 'Anton';
  static const lastName = 'Karpenko';
  static const headlineText = "Hi, I'm ";
  static const bodyText =
      'An adaptable Developer who thrives on overcoming difficult technical '
      'challenges and create scalable solutions. My background is a bit like pizza:';
  static const pizzaBase = '- 🍕 The base is software engineering';
  static const pizzaSauce = '- 🥫 The sauce is Frameworks and Languages';
  static const pizzaToppingsFirst = '- 🧂 And the toppings... ';
  static const pizzaToppingsSecond = 'well, the toppings will depend on '
      'the project that I’m working on at the time';
}
