import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_resume_website/pages/home/components/jobs_list/components/components.dart';
import 'package:flutter_resume_website/utils/const/const.dart';

class Job extends HookWidget {
  const Job({
    Key? key,
    required this.companyName,
    required this.imageAsset,
    required this.description,
    required this.flippedDescription,
  }) : super(key: key);

  final String companyName;
  final String imageAsset;
  final String description;
  final String flippedDescription;

  @override
  Widget build(BuildContext context) {
    final isFocused = useState(false);

    return MouseRegion(
      onEnter: (_) => isFocused.value = true,
      onExit: (_) => isFocused.value = false,
      child: Container(
        // Highlight decoration
        decoration: ShapeDecoration(
          shape: RoundedRectangleBorder(
            side: BorderSide(
              color: isFocused.value
                  ? Theme.of(context).colorScheme.primary
                  : Colors.transparent,
              width: .5,
            ),
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            JobDescription(
              title: companyName,
              description: description,
              flippedDescription: flippedDescription,
            ),
            image(context),
          ],
        ),
      ),
    );
  }

  Widget image(BuildContext context) {
    return Expanded(
      child: Container(
        height: AppDimensions.jobWidgetHeight,
        color: Theme.of(context).colorScheme.onBackground.withOpacity(.1),
        child: Transform.scale(
          scale: .7,
          child: ImageWrapper(
            image: imageAsset,
            fit: BoxFit.contain,
          ),
        ),
      ),
    );
  }
}
