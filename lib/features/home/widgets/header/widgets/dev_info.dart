import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_resume_website/features/home/widgets/header/widgets/widgets.dart';
import 'package:flutter_resume_website/core/utils/const/const.dart';

class DevInfo extends HookWidget {
  final double opacityValues;

  const DevInfo({Key? key, required this.opacityValues}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final devNameOpacity = opacityValues >= 1 ? 1.0 : 0.0;
    final bodyOpacity = opacityValues >= 2 ? 1.0 : 0.0;
    final baseOpacity = opacityValues >= 3 ? 1.0 : 0.0;
    final sauceOpacity = opacityValues >= 4 ? 1.0 : 0.0;
    final firstToppingOpacity = opacityValues >= 5.0 ? 1.0 : 0.0;
    final secondToppingOpacity = opacityValues > 5 ? 1.0 : 0.0;

    return Column(
      children: [
        // Headline
        HiImDevName(devNameOpacity: devNameOpacity),
        const Padding(padding: AppDimensions.paddingBottom24),
        // Body text
        AppAnimText.bodyStyle(
          text: AppStrings.bodyText,
          opacity: bodyOpacity,
          style: Theme.of(context).textTheme.bodyText2!.copyWith(fontSize: 22),
        ),
        const Padding(padding: AppDimensions.paddingBottom40),
        // Pizza properties
        AppAnimText(
          text: AppStrings.pizzaBase,
          opacity: baseOpacity,
        ),
        const Padding(padding: AppDimensions.paddingBottom32),
        AppAnimText(
          text: AppStrings.pizzaSauce,
          opacity: sauceOpacity,
        ),
        const Padding(padding: AppDimensions.paddingBottom32),
        PizzaToppings(
          firstToppingOpacity,
          secondToppingOpacity,
        ),
      ],
    );
  }
}
