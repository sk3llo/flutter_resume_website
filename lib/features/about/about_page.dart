import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_resume_website/widgets/widgets.dart';
import 'package:flutter_resume_website/features/about/widgets/widgets.dart';
import 'package:flutter_resume_website/features/home/widgets/header/widgets/dev_image.dart';
import 'package:flutter_resume_website/core/utils/app_images.dart';
import 'package:flutter_resume_website/core/utils/const/app_strings.dart';

class AboutPage extends HookWidget {
  const AboutPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final headerKey = GlobalKey();
    late final double imageScrollingBounds;
    final aboutScrollController = useScrollController();
    final mQuerySize = MediaQuery.of(context).size;
    final firstHeaderTextSpacing = mQuerySize.height / 4;
    final secondHeaderTextSpacing = mQuerySize.height / 2;
    final imageTopPadding = useState(0.0);

    useEffect(() {
      WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
        // Get height of text to figure out image scrolling bounds
        final bounds = headerKey.currentContext!.size!.height -
            (firstHeaderTextSpacing + secondHeaderTextSpacing);
        imageScrollingBounds = bounds;
      });
      // After we know the bounds let's update image's top padding
      aboutScrollController.addListener(() {
        final offset = aboutScrollController.offset;
        if (offset < imageScrollingBounds) {
          imageTopPadding.value = offset;
        } else if (offset > imageScrollingBounds) {
          imageTopPadding.value = imageScrollingBounds;
        }
      });
      return null;
    }, ['']);

    return AppScaffold(
      displayBackButton: true,
      scrollController: aboutScrollController,
      child: Column(
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                child: Column(
                  key: headerKey,
                  children: [
                    SizedBox(height: mQuerySize.height / 4),
                    const AboutPageHeaderFirstHeadline(),
                    SizedBox(height: mQuerySize.height / 2),
                    const AboutPageHeaderSecondHeadline(
                      title: AppStrings.aboutPageBodyTitle,
                      subtitle: AppStrings.aboutPageBodySubtitle,
                    )
                  ],
                ),
              ),
              Expanded(
                child: Padding(
                  padding: EdgeInsets.only(
                    top: imageTopPadding.value,
                  ),
                  child: DevImage(
                    alignment: Alignment.centerRight,
                    imageAsset: AppImages.devSecondImage,
                    height: mQuerySize.height * .75,
                    width: mQuerySize.width / 3,
                    slideFrom: DevImageSlideFrom.right,
                  ),
                ),
              ),
            ],
          ),
          AboutPageBody(),
          const Footer(),
        ],
      ),
    );
  }
}
