import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_resume_website/pages/home/components/jobs_list/components/components.dart';
import 'package:flutter_resume_website/utils/constants.dart';

class DevImage extends HookWidget {
  const DevImage({
    required this.imageAsset,
    this.width,
    this.height,
    this.alignment = Alignment.center,
  }) : super();

  final String imageAsset;
  final double? width;
  final double? height;
  final Alignment alignment;

  @override
  Widget build(BuildContext context) {
    final imageOpacity = useState(0.0);
    useEffect(() {
      // Launch fade effect
      Timer(Duration(milliseconds: 400), () => imageOpacity.value = 1.0);
    }, ['']);

    return AnimatedOpacity(
      duration: AppConst.defaultAnimDuration,
      opacity: imageOpacity.value,
      child: Align(
        alignment: alignment,
        child: ImageWrapper(
          image: imageAsset,
          width: MediaQuery.of(context).size.width / 2,
          fit: BoxFit.cover,
          height: height ?? MediaQuery.of(context).size.height - 105,
        ),
      ),
    );
  }
}
