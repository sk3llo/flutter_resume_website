import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_resume_website/core/utils/const/const.dart';

class AppAnimText extends HookWidget {
  const AppAnimText({
    Key? key,
    required this.text,
    required this.opacity,
    this.style,
    this.letterSpacing,
    this.alignment = Alignment.centerLeft,
    this.width = 460,
  }) : super(key: key);

  factory AppAnimText.bodyStyle({
    required String text,
    required double opacity,
    required TextStyle? style,
  }) {
    return AppAnimText(
      text: text,
      letterSpacing: 2,
      opacity: opacity,
      style: style,
      alignment: Alignment.center,
    );
  }

  final String text;
  final double opacity;
  final TextStyle? style;
  final Alignment alignment;
  final double? width;
  final double? letterSpacing;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      alignment: alignment,
      child: AnimatedOpacity(
        opacity: opacity,
        duration: AppAnim.defaultAnimDuration,
        child: Text(
          text,
          textAlign: TextAlign.center,
          style: style ??
              Theme.of(context)
                  .textTheme
                  .subtitle2!
                  .copyWith(letterSpacing: letterSpacing),
        ),
      ),
    );
  }
}
