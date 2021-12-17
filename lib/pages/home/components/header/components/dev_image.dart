import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

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
    return Align(
      alignment: alignment,
      child: Image.asset(
        imageAsset,
        width: MediaQuery.of(context).size.width / 2,
        fit: BoxFit.cover,
        height: height ?? MediaQuery.of(context).size.height - 105,
      ),
    );
  }
}
