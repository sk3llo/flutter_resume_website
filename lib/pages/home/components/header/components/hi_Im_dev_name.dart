import 'package:flutter/material.dart';
import 'package:flutter_resume_website/utils/const/const.dart';

class HiImDevName extends StatelessWidget {
  const HiImDevName({
    Key? key,
    required this.devNameOpacity,
  }) : super(key: key);

  final double devNameOpacity;

  @override
  Widget build(BuildContext context) {
    return AnimatedOpacity(
      opacity: devNameOpacity,
      duration: AppAnim.defaultAnimDuration,
      child: RichText(
        text: TextSpan(children: [
          TextSpan(
            text: AppStrings.headlineText,
            style: Theme.of(context).textTheme.headline1,
          ),
          TextSpan(
            text: AppStrings.devFirstName,
            style: Theme.of(context).textTheme.headline2,
          ),
          TextSpan(
            text: '!',
            style: Theme.of(context).textTheme.headline1,
          ),
        ]),
      ),
    );
  }
}
