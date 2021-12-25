import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_resume_website/pages/home/components/header/components/components.dart';
import 'package:flutter_resume_website/utils/const/const.dart';

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
        Padding(padding: AppDimensions.paddingBottom24),
        // Body text
        AppAnimText.bodyStyle(
          text: AppStrings.bodyText,
          opacity: bodyOpacity,
          style: Theme.of(context).textTheme.bodyText2!.copyWith(fontSize: 22),
        ),
        Padding(padding: AppDimensions.paddingBottom40),
        // Pizza properties
        AppAnimText(
          text: AppStrings.pizzaBase,
          opacity: baseOpacity,
        ),
        Padding(padding: AppDimensions.paddingBottom32),
        AppAnimText(
          text: AppStrings.pizzaSauce,
          opacity: sauceOpacity,
        ),
        Padding(padding: AppDimensions.paddingBottom32),
        PizzaToppings(
          firstToppingOpacity,
          secondToppingOpacity,
        ),
      ],
    );
  }
}
