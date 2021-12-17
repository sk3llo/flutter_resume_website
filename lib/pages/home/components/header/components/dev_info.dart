import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_resume_website/pages/home/components/header/components/components.dart';
import 'package:flutter_resume_website/utils/constants.dart';
import 'package:flutter_resume_website/utils/spacing.dart';

class DevInfo extends HookWidget {
  final List<double> opacityValues;

  const DevInfo({required this.opacityValues});

  @override
  Widget build(BuildContext context) {
    final devNameOpacity = opacityValues[0];
    final bodyOpacity = opacityValues[1];
    final baseOpacity = opacityValues[2];
    final sauceOpacity = opacityValues[3];
    final firstToppingOpacity = opacityValues[4];
    final secondToppingOpacity = opacityValues[5];

    return Column(
      children: [
        // Headline
        HiImDevName(devNameOpacity: devNameOpacity),
        Padding(padding: paddingBottom24),
        // Body text
        AnimatedText.bodyStyle(
          text: AppConst.bodyText,
          opacity: bodyOpacity,
          style: Theme.of(context).textTheme.subtitle1,
        ),
        Padding(padding: paddingBottom40),
        // Pizza properties
        AnimatedText(
          text: AppConst.pizzaBase,
          opacity: baseOpacity,
        ),
        Padding(padding: paddingBottom32),
        AnimatedText(
          text: AppConst.pizzaSauce,
          opacity: sauceOpacity,
        ),
        Padding(padding: paddingBottom32),
        PizzaToppings(
          firstToppingOpacity,
          secondToppingOpacity,
        ),
      ],
    );
  }
}
