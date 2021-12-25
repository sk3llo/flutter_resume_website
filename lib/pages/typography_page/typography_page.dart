import 'package:flutter/material.dart';
import 'package:flutter_resume_website/components/components.dart';
import 'package:flutter_resume_website/utils/const/const.dart';

class TypographyPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return AppScaffold(
      child: Column(
        children: <Widget>[
          Container(
            margin: EdgeInsets.only(top: 12),
            alignment: Alignment.centerLeft,
            child: BackButton(),
          ),
          // MenuBar(title: devName),
          Align(
            alignment: Alignment.center,
            child: Container(
              margin: AppDimensions.paddingBottom12,
              child: Text("Typography",
                  style: Theme.of(context).textTheme.headline1),
            ),
          ),
          Align(
            alignment: Alignment.center,
            child: Container(
              margin: AppDimensions.paddingBottom24,
              child: Text("Text styles for pages and posts.",
                  style: Theme.of(context).textTheme.subtitle2),
            ),
          ),
          divider,
          Container(
            margin: AppDimensions.paddingBottom40,
          ),
          Align(
            alignment: Alignment.center,
            child: Container(
              margin: AppDimensions.paddingBottom12,
              child: Text("Basic Styles",
                  style: Theme.of(context).textTheme.subtitle1),
            ),
          ),
          Align(
            alignment: Alignment.center,
            child: Container(
              margin: AppDimensions.paddingBottom24,
              child: Text("Simple to remember and use",
                  style: Theme.of(context).textTheme.subtitle2),
            ),
          ),
          dividerSmall,
          Container(
            margin: AppDimensions.paddingBottom24,
          ),
          Align(
            alignment: Alignment.centerLeft,
            child: Container(
              margin: AppDimensions.paddingBottom24,
              child: Text("Headline",
                  style: Theme.of(context).textTheme.subtitle2),
            ),
          ),
          Align(
            alignment: Alignment.centerLeft,
            child: Container(
              margin: AppDimensions.paddingBottom24,
              child: Text("Headline Secondary",
                  style: Theme.of(context).textTheme.subtitle1),
            ),
          ),
          Align(
            alignment: Alignment.centerLeft,
            child: Container(
              margin: AppDimensions.paddingBottom24,
              child: Text("Subtitle",
                  style: Theme.of(context).textTheme.subtitle2),
            ),
          ),
          Align(
            alignment: Alignment.centerLeft,
            child: Container(
              margin: AppDimensions.paddingBottom40,
              child: Text(
                  "Body text is the default text style. Use this text style for website content and paragraphs. This text is chosen to be easy and comfortable to read. As the default text style for large blocks of text, particular attention is placed on the choice of font. Some fonts are more comfortable to read than others.",
                  style: Theme.of(context).textTheme.button),
            ),
          ),
          divider,
          Footer(),
        ],
      ),
    );
  }
}
