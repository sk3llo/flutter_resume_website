import 'package:flutter/material.dart';
import 'package:flutter_resume_website/features/about/widgets/widgets.dart';
import 'package:flutter_resume_website/core/utils/const/const.dart';

class AboutPageBody extends StatelessWidget {
  const AboutPageBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 120),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(height: 150),
          AboutText(
            width: MediaQuery.of(context).size.width,
            text: AppStrings.aboutPageBodyHeader,
            textAlign: TextAlign.left,
            style:
                Theme.of(context).textTheme.headline2!.copyWith(fontSize: 40),
          ),
          const SizedBox(height: 50),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: List.generate(
              3,
              (pos) => blueBackgroundBlock(context, pos + 1),
            ),
          ),
          letsStartAConvo(context),
        ],
      ),
    );
  }

  Widget blueBackgroundBlock(BuildContext context, int pos) {
    final theme = Theme.of(context).textTheme;
    return Expanded(
      child: Container(
        margin: const EdgeInsets.only(right: 4),
        padding: const EdgeInsets.all(26),
        color: Theme.of(context).colorScheme.onBackground.withOpacity(.2),
        child: Column(
          children: [
            Align(
              alignment: Alignment.centerLeft,
              child: Text(
                '0$pos',
                style: theme.button,
              ),
            ),
            const SizedBox(height: 30),
            Text(
              pos == 1
                  ? AppStrings.aboutPageFirstBodyBlockTitle
                  : pos == 2
                      ? AppStrings.aboutPageSecondBodyBlockTitle
                      : AppStrings.aboutPageThirdBodyBlockTitle,
              style: theme.subtitle1!.copyWith(
                fontWeight: FontWeight.w500,
              ),
            ),
            const SizedBox(height: 30),
            Text(
              pos == 1
                  ? AppStrings.aboutPageFirstBodyBlockSubtitle
                  : pos == 2
                      ? AppStrings.aboutPageSecondBodyBlockSubtitle
                      : AppStrings.aboutPageThirdBodyBlockSubtitle,
              style: theme.subtitle2!.copyWith(
                fontSize: 16,
                fontWeight: FontWeight.w400,
                height: 1.5,
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget letsStartAConvo(BuildContext context) {
    return Column(
      children: [
        const SizedBox(height: 150),
        AboutText(
          width: MediaQuery.of(context).size.width,
          text: AppStrings.aboutPageBottomTitle,
          textAlign: TextAlign.left,
          style: Theme.of(context).textTheme.headline2!.copyWith(fontSize: 40),
        ),
        const SizedBox(height: 100),
        Container(
          alignment: Alignment.centerRight,
          child: AboutText(
            width: 600.0,
            text: AppStrings.aboutPageBottomSubtitle,
            textAlign: TextAlign.left,
            style: Theme.of(context).textTheme.bodyText2!.copyWith(
                  fontSize: 24,
                  letterSpacing: 1,
                  height: 1.5,
                ),
          ),
        ),
      ],
    );
  }
}
