import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_resume_website/pages/home/components/jobs_list/components/components.dart';
import 'package:flutter_resume_website/utils/const/const.dart';

enum DevImageSlideFrom {
  left,
  right,
}

class DevImage extends HookWidget {
  const DevImage({
    required this.imageAsset,
    this.width,
    this.height,
    this.alignment = Alignment.center,
    this.slideFrom = DevImageSlideFrom.left,
    this.animDuration = AppAnim.defaultAnimDuration,
  }) : super();

  final String imageAsset;
  final double? width;
  final double? height;
  final Alignment alignment;
  final DevImageSlideFrom slideFrom;
  final Duration animDuration;

  @override
  Widget build(BuildContext context) {
    final imageOpacity = useState(0.0);
    late final animTween;
    if (slideFrom == DevImageSlideFrom.left) {
      animTween = Tween<Offset>(
        begin: Offset(-1, 0),
        end: Offset(0, 0),
      );
    } else {
      animTween = Tween<Offset>(
        begin: Offset(1, 0),
        end: Offset(0, 0),
      );
    }
    final animController = useAnimationController(duration: animDuration);
    useEffect(() {
      animController.forward();
      // Launch fade effect
      Timer(Duration(milliseconds: 400), () {
        imageOpacity.value = 1.0;
      });
    }, ['']);

    return SlideTransition(
      position: animController.drive(animTween),
      child: AnimatedOpacity(
        duration: animDuration,
        opacity: imageOpacity.value,
        child: Align(
          // alignment: alignment,
          child: ImageWrapper(
            image: imageAsset,
            width: width ?? MediaQuery.of(context).size.width / 2,
            fit: BoxFit.cover,
            height: height ?? MediaQuery.of(context).size.height - 105,
          ),
        ),
      ),
    );
  }
}
