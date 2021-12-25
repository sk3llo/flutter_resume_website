import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_resume_website/pages/about/components/components.dart';
import 'package:flutter_resume_website/utils/const/const.dart';

class HeaderFirstHeadline extends HookWidget {
  const HeaderFirstHeadline({this.width = 450.0});

  final double width;

  @override
  Widget build(BuildContext context) {
    final isHeaderFocused = useState(false);
    const spacing = 16.0;

    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        title(context),
        SizedBox(height: spacing),
        subtitles(context, isHeaderFocused),
      ],
    );
  }

  Widget title(BuildContext context) {
    return AboutText(
      text: AppStrings.aboutPageHeaderTitle,
      textAlign: TextAlign.center,
      style: Theme.of(context).textTheme.headline2,
    );
  }

  Widget subtitles(
    BuildContext context,
    ValueNotifier<bool> isHeaderFocused,
  ) {
    return MouseRegion(
      onEnter: (_) => isHeaderFocused.value = true,
      onExit: (_) => isHeaderFocused.value = false,
      child: Stack(
        children: [
          AboutText(
            width: width,
            opacity: isHeaderFocused.value ? 0 : 1,
            text: AppStrings.aboutPageHeaderFirstSubtitle,
          ),
          AboutText(
            width: width,
            opacity: isHeaderFocused.value ? 1 : 0,
            text: AppStrings.aboutPageHeaderFirstSubtitleFlipped,
          ),
        ],
      ),
    );
  }
}
