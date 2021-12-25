import 'package:flutter/material.dart';
import 'package:flutter_resume_website/pages/about/components/components.dart';
import 'package:flutter_resume_website/utils/app_colors.dart';
import 'package:flutter_resume_website/utils/const/const.dart';

class AboutBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 120),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 150),
          AboutText(
            width: MediaQuery.of(context).size.width,
            text: AppStrings.aboutPageBodyHeader,
            textAlign: TextAlign.left,
            style:
                Theme.of(context).textTheme.headline2!.copyWith(fontSize: 40),
          ),
          SizedBox(height: 50),
          Row(
            children: List.generate(
                3, (pos) => blueBackgroundBlock(context, pos + 1)),
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
          ),
          letsStartConvo(context),
        ],
      ),
    );
  }

  Widget blueBackgroundBlock(BuildContext context, int pos) {
    final theme = Theme.of(context).textTheme;
    return Expanded(
      child: Container(
        margin: EdgeInsets.only(right: 4),
        padding: EdgeInsets.all(26),
        color: AppColors.lightOrange,
        child: Column(
          children: [
            Align(
              alignment: Alignment.centerLeft,
              child: Text(
                '0$pos',
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
              style: theme.subtitle1!.copyWith(
                fontWeight: FontWeight.w500,
              ),
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
                height: 1.5,
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget letsStartConvo(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: 150),
        AboutText(
          width: MediaQuery.of(context).size.width,
          text: AppStrings.aboutPageBottomTitle,
          textAlign: TextAlign.left,
          style: Theme.of(context).textTheme.headline2!.copyWith(fontSize: 40),
        ),
        SizedBox(height: 100),
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
