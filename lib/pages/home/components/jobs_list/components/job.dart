import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_resume_website/pages/home/components/jobs_list/components/components.dart';
import 'package:flutter_resume_website/utils/app_colors.dart';
import 'package:flutter_resume_website/utils/constants.dart';
import 'package:flutter_resume_website/utils/routes.dart';
import 'package:flutter_resume_website/utils/spacing.dart';

class Job extends HookWidget {
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
    final isFocused = useState(false);

    return MouseRegion(
      onEnter: (_) {
        isFocused.value = true;
      },
      onExit: (_) {
        isFocused.value = false;
      },
      child: Container(
        // Highlight decoration
        decoration: ShapeDecoration(
          shape: RoundedRectangleBorder(
            side: BorderSide(
              color: isFocused.value
                  ? AppColors.textHightlight.withOpacity(.5)
                  : Colors.transparent,
              width: .5,
            ),
          ),
        ),
        child: Row(
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
        ),
      ),
    );
  }

  Widget title(BuildContext context) {
    return Padding(
      padding: paddingBottom12,
      child: Text(
        companyName,
        style: Theme.of(context).textTheme.bodyText2,
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
        height: AppConst.jobWidgetHeight,
        color: AppColors.boxHightlight.withOpacity(.5),
        child: Transform.scale(
          scale: .7,
          child: ImageWrapper(
            image: imageAsset!,
            fit: BoxFit.contain,
          ),
        ),
      ),
    );
  }
}
