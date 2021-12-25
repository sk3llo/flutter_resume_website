import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_resume_website/pages/about/components/components.dart';

class HeaderSecondTitle extends HookWidget {
  const HeaderSecondTitle({
    this.width = 450.0,
    required this.title,
    required this.subtitle,
  });

  final double width;
  final String title;
  final String subtitle;

  @override
  Widget build(BuildContext context) {
    const spacing = 16.0;

    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        buildTitle(context),
        SizedBox(height: spacing),
        buildSubtitle(context),
      ],
    );
  }

  Widget buildTitle(BuildContext context) {
    return AboutText(
      text: title,
      textAlign: TextAlign.left,
      style: Theme.of(context).textTheme.bodyText1!.copyWith(
            fontSize: 26,
            fontWeight: FontWeight.w500,
          ),
    );
  }

  Widget buildSubtitle(BuildContext context) {
    return AboutText(
      width: width,
      opacity: 1,
      text: subtitle,
      textAlign: TextAlign.left,
      style: Theme.of(context).textTheme.subtitle1!.copyWith(
            wordSpacing: 3,
            height: 1.5,
          ),
    );
  }
}
