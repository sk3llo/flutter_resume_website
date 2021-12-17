import 'package:flutter/material.dart';
import 'package:flutter_resume_website/pages/home/components/job/components/components.dart';
import 'package:flutter_resume_website/utils/app_colors.dart';
import 'package:flutter_resume_website/utils/routes.dart';
import 'package:flutter_resume_website/utils/spacing.dart';

class Job extends StatelessWidget {
  const Job({
    Key? key,
    required this.companyName,
    required this.imageAsset,
    required this.description,
  }) : super(key: key);

  final String companyName;
  final String? imageAsset;
  final String? description;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Expanded(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              title(context),
              descriptionWidget(context),
              button(context),
            ],
          ),
        ),
        SizedBox(width: 60),
        image(),
      ],
    );
  }

  Widget title(BuildContext context) {
    return Padding(
      padding: paddingBottom12,
      child: Text(
        companyName,
        style: Theme.of(context).textTheme.subtitle1,
      ),
    );
  }

  Widget descriptionWidget(BuildContext context) {
    return Padding(
      padding: paddingBottom12,
      child: Text(
        description!,
        style: Theme.of(context).textTheme.subtitle2,
      ),
    );
  }

  Widget button(BuildContext context) {
    return Padding(
      padding: paddingBottom24,
      child: ReadMoreButton(
        onPressed: () => Navigator.pushNamed(context, Routes.post),
      ),
    );
  }

  Widget image() {
    return Expanded(
      child: Container(
        color: AppColors.boxHightlight.withOpacity(.5),
        child: ImageWrapper(
          image: imageAsset!,
        ),
      ),
    );
  }
}
