import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_resume_website/core/utils/const/const.dart';

class PizzaToppings extends HookWidget {
  const PizzaToppings(
    this.firstToppingsOpacity,
    this.secondToppingsOpacity, {Key? key,
    this.width = 460,
  }) : super(key: key);

  final double? width;
  final double firstToppingsOpacity;
  final double secondToppingsOpacity;

  @override
  Widget build(BuildContext context) {
    final firstToppingColorOpacity = useState(0.0);
    final secondToppingColorOpacity = useState(0.0);

    if (firstToppingsOpacity == 1.0 && secondToppingColorOpacity.value == 0.0) {
      updateToppingTextColor(firstToppingColorOpacity);
    }
    if (secondToppingsOpacity == 1.0 &&
        secondToppingColorOpacity.value == 0.0) {
      updateToppingTextColor(secondToppingColorOpacity);
    }

    // Listen to the first topping changes
    return SizedBox(
      width: width,
      child: ValueListenableBuilder<double>(
        valueListenable: firstToppingColorOpacity,
        builder: (context, firstToppingsValue, _) {
          // Listen to the second topping changes
          return ValueListenableBuilder<double>(
            valueListenable: secondToppingColorOpacity,
            builder: (context, secondToppingsValue, __) {
              final style = Theme.of(context).textTheme.subtitle2!;
              return RichText(
                text: TextSpan(
                  children: [
                    // Update first topping
                    TextSpan(
                      text: AppStrings.pizzaToppingsFirst,
                      style: style.copyWith(
                        color: style.color!.withOpacity(firstToppingsValue),
                      ),
                    ),
                    // Update second topping
                    TextSpan(
                      text: AppStrings.pizzaToppingsSecond,
                      style: style.copyWith(
                        color: style.color!.withOpacity(secondToppingsValue),
                      ),
                    ),
                  ],
                ),
              );
            },
          );
        },
      ),
    );
  }

  // Manually update opacity from 0.0 to 1.0
  void updateToppingTextColor(ValueNotifier<double> valueToUpdate) {
    const colorUpdateDuration = Duration(milliseconds: 100);

    Timer.periodic(colorUpdateDuration, (timer) {
      double updatedValue = valueToUpdate.value + .1;
      if (updatedValue > 1.0) updatedValue = 1.0;
      valueToUpdate.value = updatedValue;
      if (valueToUpdate.value == 1.0) timer.cancel();
    });
  }
}
