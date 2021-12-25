import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_resume_website/components/app_scaffold/app_scaffold.dart';
import 'package:flutter_resume_website/pages/about/components/components.dart';
import 'package:flutter_resume_website/pages/home/components/header/components/dev_image.dart';
import 'package:flutter_resume_website/utils/app_colors.dart';
import 'package:flutter_resume_website/utils/app_images.dart';
import 'package:flutter_resume_website/utils/const/app_strings.dart';

class AboutPage extends HookWidget {
  @override
  Widget build(BuildContext context) {
    final headerKey = GlobalKey();
    final theme = Theme.of(context).textTheme;
    late final imageScrollingBounds;
    final aboutScrollController = useScrollController();
    final mQuerySize = MediaQuery.of(context).size;
    final firstHeaderTextSpacing = mQuerySize.height / 4;
    final secondHeaderTextSpacing = mQuerySize.height / 2;
    final imageTopPadding = useState(0.0);

    useEffect(() {
      WidgetsBinding.instance?.addPostFrameCallback((timeStamp) {
        // Get height of text to figure out image scrolling bounds
        final bounds = headerKey.currentContext!.size!.height -
            (firstHeaderTextSpacing + secondHeaderTextSpacing);
        imageScrollingBounds = bounds;
      });
      // After we know the bounds let's update image's top padding
      aboutScrollController.addListener(() {
        final _offset = aboutScrollController.offset;
        if (_offset < imageScrollingBounds) {
          imageTopPadding.value = _offset;
        } else if (_offset > imageScrollingBounds) {
          imageTopPadding.value = imageScrollingBounds;
        }
      });
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
                    HeaderFirstTitle(),
                    SizedBox(height: mQuerySize.height / 2),
                    HeaderSecondTitle(
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

          /// Todo: move body to separate file
          Container(
            margin: EdgeInsets.symmetric(horizontal: 80),
            child: Column(
              children: [
                SizedBox(height: 150),
                Container(
                  alignment: Alignment.center,
                  child: AboutText(
                    text: AppStrings.aboutPageBodyHeader,
                    style: Theme.of(context).textTheme.headline2!.copyWith(
                          fontSize: 40,
                        ),
                  ),
                ),
                SizedBox(height: 50),
                Row(
                  children:
                      List.generate(3, (pos) => bodyBlock(theme, pos + 1)),
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                ),
              ],
            ),
          )
        ],
      ),
    );
  }

  Widget bodyBlock(TextTheme theme, int pos) {
    return Container(
      margin: EdgeInsets.only(right: 4),
      height: 375,
      width: 375,
      padding: EdgeInsets.all(26),
      color: AppColors.lightOrange,
      child: Column(
        children: [
          Align(
            alignment: Alignment.centerLeft,
            child: Text(
              '0${pos + 1}',
              style: theme.button,
            ),
          ),
          SizedBox(height: 30),
          Text(
            pos == 1
                ? AppStrings.aboutPageFirstBodyBlockTitle
                : pos == 2
                    ? AppStrings.aboutPageSecondBodyBlockTitle
                    : AppStrings.aboutPageThirdBodyBlockTitle,
            style: theme.subtitle1,
          ),
          SizedBox(height: 30),
          Text(
            pos == 1
                ? AppStrings.aboutPageFirstBodyBlockSubtitle
                : pos == 2
                    ? AppStrings.aboutPageSecondBodyBlockSubtitle
                    : AppStrings.aboutPageThirdBodyBlockSubtitle,
            style: theme.subtitle2!.copyWith(
              fontSize: 16,
              fontWeight: FontWeight.w400,
              height: 1.25,
            ),
          ),
        ],
      ),
    );
  }
}
