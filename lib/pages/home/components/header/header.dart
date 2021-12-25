import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_resume_website/pages/home/components/header/components/components.dart';
import 'package:flutter_resume_website/pages/home/components/header/components/dev_image.dart';
import 'package:flutter_resume_website/utils/const/const.dart';

class Header extends HookWidget {
  const Header({required this.imageAsset});

  final String imageAsset;

  @override
  Widget build(BuildContext context) {
    final opacityValues = useState(List.filled(6, 0.0));
    // Run once unless key changes
    useEffect(() {
      Timer.periodic(AppAnim.defaultAnimDuration, (timer) {
        opacityValues.value = handleOpacity(timer, opacityValues.value);
      });
    }, ['']);

    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        DevImage(
          imageAsset: imageAsset,
          width: MediaQuery.of(context).size.width / 2 - 32,
        ),
        Padding(padding: AppDimensions.paddingBottom16),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              DevInfo(opacityValues: opacityValues.value),
              Padding(padding: AppDimensions.paddingBottom16),
            ],
          ),
        )
      ],
    );
  }

  // On every timer's tick change the next value in the list from 0 to 1
  List<double> handleOpacity(Timer timer, List<double> animValues) {
    final tick = timer.tick;
    animValues = List<double>.from(animValues)..[tick - 1] = 1;
    if (tick == 6) timer.cancel();
    return animValues;
  }
}
