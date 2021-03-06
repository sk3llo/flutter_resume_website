import 'package:flutter/material.dart';
import 'package:flutter_resume_website/core/utils/const/const.dart';

class TextBody extends StatelessWidget {
  final String text;

  const TextBody({Key? key, required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: AppDimensions.paddingBottom24,
      child: Text(
        text,
        style: Theme.of(context).textTheme.button,
      ),
    );
  }
}

class TextBodySecondary extends StatelessWidget {
  final String text;

  const TextBodySecondary({Key? key, required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: AppDimensions.paddingBottom24,
      child: Text(
        text,
        style: Theme.of(context).textTheme.subtitle2,
      ),
    );
  }
}

class TextHeadlineSecondary extends StatelessWidget {
  final String text;

  const TextHeadlineSecondary({Key? key, required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: AppDimensions.paddingBottom12,
      child: Text(
        text,
        style: Theme.of(context).textTheme.subtitle1,
      ),
    );
  }
}

class TextBlockquote extends StatelessWidget {
  final String text;

  const TextBlockquote({Key? key, required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: AppDimensions.paddingBottom24,
      decoration: const BoxDecoration(
        border: Border(
          left: BorderSide(
            width: 2,
            color: Color(0xFF333333),
          ),
        ),
      ),
      padding: const EdgeInsets.only(left: 20),
      child: Align(
        alignment: Alignment.centerLeft,
        child: Text(
          text,
          style: Theme.of(context).textTheme.button,
        ),
      ),
    );
  }
}
