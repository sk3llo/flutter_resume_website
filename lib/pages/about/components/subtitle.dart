import 'package:flutter/material.dart';
import 'package:flutter_resume_website/utils/const/const.dart';

class AboutText extends StatelessWidget {
  const AboutText({
    Key? key,
    required this.text,
    this.width = 450.0,
    this.opacity = 1,
    this.style,
    this.textAlign,
  }) : super(key: key);

  final String text;
  final double width;
  final double opacity;
  final TextStyle? style;
  final TextAlign? textAlign;

  @override
  Widget build(BuildContext context) {
    return AnimatedOpacity(
      opacity: opacity,
      duration: AppAnim.defaultAnimDuration,
      child: SizedBox(
        width: width,
        child: Text(
          text,
          style: style ?? Theme.of(context).textTheme.bodyText2,
          textAlign: textAlign ?? TextAlign.center,
        ),
      ),
    );
  }
}
