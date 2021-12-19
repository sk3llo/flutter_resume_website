import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_resume_website/utils/constants.dart';

class ImageWrapper extends StatelessWidget {
  const ImageWrapper({
    Key? key,
    required this.image,
    this.width,
    this.height,
    this.padding,
    this.fit,
    this.imageDecoration,
    this.onImageTapped,
    this.onMouseEnter,
    this.onMouseExit,
  }) : super(key: key);

  final String image;
  final double? width;
  final double? height;
  final EdgeInsets? padding;
  final BoxFit? fit;
  final Decoration? imageDecoration;
  final VoidCallback? onImageTapped;
  final Function(PointerEnterEvent)? onMouseEnter;
  final Function(PointerExitEvent)? onMouseExit;

  @override
  Widget build(BuildContext context) {
    final _w = width ?? MediaQuery.of(context).size.width;
    final _h = height ?? 250.0;

    return GestureDetector(
      onTap: onImageTapped,
      child: MouseRegion(
        onEnter: onMouseEnter,
        onExit: onMouseExit,
        child: AnimatedContainer(
          padding: padding,
          decoration: imageDecoration,
          duration: AppConst.defaultAnimDuration,
          child: Image.asset(
            image,
            width: _w,
            height: _h,
            fit: fit ?? BoxFit.fitHeight,
          ),
        ),
      ),
    );
  }
}
