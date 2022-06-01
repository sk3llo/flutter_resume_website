import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_resume_website/features/home/widgets/header/widgets/widgets.dart';
import 'package:flutter_resume_website/features/home/widgets/header/widgets/dev_image.dart';
import 'package:flutter_resume_website/core/utils/app_images.dart';
import 'package:flutter_resume_website/core/utils/const/const.dart';

class Header extends HookWidget {
  const Header({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final opacityValues = useState(0.0);

    // Run once unless key changes
    useEffect(() {
      Timer.periodic(AppAnim.defaultAnimDuration, (timer) {
        opacityValues.value += 1.0;
        if (opacityValues.value >= 6) timer.cancel();
      });
      return null;
    }, ['']);

    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        DevImage(
          imageAsset: AppImages.devFirstImage,
          width: MediaQuery.of(context).size.width / 2 - 32,
        ),
        const Padding(padding: AppDimensions.paddingBottom16),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              DevInfo(opacityValues: opacityValues.value),
              const Padding(padding: AppDimensions.paddingBottom16),
            ],
          ),
        )
      ],
    );
  }
}
