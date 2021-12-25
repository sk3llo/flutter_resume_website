import 'package:flutter_resume_website/pages/home/components/jobs_list/components/components.dart';
import 'package:flutter_resume_website/utils/app_images.dart';

abstract class AppJobs {
  static const listOfJobs = [
    const Job(
      imageAsset: AppImages.gbkLogo,
      companyName: 'GBK Soft',
      description: 'Dart/Flutter Developer',
    ),
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
    const Job(
      imageAsset: AppImages.taxmeLogo,
      companyName: 'Taxme',
      description: 'Dart/Flutter Developer',
    ),
    const Job(
      imageAsset: AppImages.bunqLogo,
      companyName: 'Bunq',
      description: 'Android Developer',
    ),
  ];
}
