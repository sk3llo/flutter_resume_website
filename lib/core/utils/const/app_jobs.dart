import 'package:flutter_resume_website/core/utils/app_images.dart';
import 'package:flutter_resume_website/features/home/widgets/jobs_list/widgets/widgets.dart';

abstract class AppJobs {
  static const listOfJobs = [
    const Job(
      imageAsset: AppImages.gbkLogo,
      companyName: 'GBK Soft',
      description: 'Dart/Flutter Developer',
      flippedDescription: "Currently working as a Senior Software Engineer at"
          "GBK Soft (part of Altamira.ai). Here, I'm happy to be surrounded by the "
          "brilliant people that share the vision of “technology for good”"
          " and I’m truly humbled by their support. Meanwhile, I’m excited by "
          "the ever-growing challenges I’m faced with as my career unfolds "
          "and keen to take them on.",
    ),
    const Job(
      imageAsset: AppImages.X1Logo,
      companyName: 'X1 Group',
      description: 'Dart/Flutter Developer',
      flippedDescription:
          "Flutter application to help women track their health "
          "when taking birth control pills. Mostly cloud based, which means a "
          "lot of data (texts, images, colors) was coming from the server. "
          "We used JWT for authorization and further communication with the "
          "server, encrypted local storage, implicit "
          "animations, push notifications, and localization.",
    ),
    const Job(
      imageAsset: AppImages.catLogo,
      companyName: 'Caterpillar',
      description: 'Dart/Flutter Developer',
      flippedDescription: "Worked on two different Flutter projects. First one "
          "was an internal application for employees to help them onboard, "
          "communicate with the management, request days off etc. Used AWS as "
          "a backend, modular architecture, localization, push notifications, "
          "Camera API, image compressing. Second app needed to connect with "
          "your engine to wirelessly transfer data to your mobile device."
          " For that we’ve built a custom bluetooth library. Also the "
          "app required location permissions.",
    ),
    const Job(
      imageAsset: AppImages.huckLogo,
      companyName: 'Huck Adventures',
      description: 'Dart/Flutter Developer',
      flippedDescription: "Flutter application with From rock climbing to duck "
          "hunting, Huck makes it easy to search for and find the right partner "
          "with similar skills and interests. Prefer groups? Connect with a "
          "whole community of outdoor enthusiasts through Huck’s events and "
          "trips. Everything you need to meet people, build friendships and "
          "join a community of like-minded adventurers is here, so you’ll never "
          "have to go solo again.",
    ),
    const Job(
      imageAsset: AppImages.taxmeLogo,
      companyName: 'Taxme',
      description: 'Dart/Flutter Developer',
      flippedDescription: "The Taxme app is a system designed for managing "
          "clients in accounting firms. The system enables control and monitoring"
          " of all reports of the firm's clients to the tax authorities, "
          "as well as saving data and presenting them to the client at any given "
          "time. Used native Flutter components to build graphs and charts, "
          "used Firestore as a backend and sqflite to save data locally.",
    ),
    const Job(
      imageAsset: AppImages.bunqLogo,
      companyName: 'Bunq',
      description: 'Android Developer',
      flippedDescription: "Duties included refactoring existing codebase from "
          "Java to Kotlin, fixing bugs and writing unit tests. Was present on "
          "discussions regarding features implementation, where gained a lot of "
          "experience. Also communicated tightly with the senior developers "
          "if something was unclear.",
    ),
  ];
}
