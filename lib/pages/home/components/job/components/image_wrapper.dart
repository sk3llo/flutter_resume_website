import 'package:flutter/material.dart';

class ImageWrapper extends StatelessWidget {
  const ImageWrapper({
    Key? key,
    required this.image,
    this.width,
    this.height,
  }) : super(key: key);

  final String image;
  final double? width;
  final double? height;

  @override
  Widget build(BuildContext context) {
    final _w = width ?? MediaQuery.of(context).size.width;
    final _h = height ?? 250.0;

    return Container(
      margin: EdgeInsets.symmetric(vertical: 24),
      child: Image.asset(
        image,
        width: _w,
        height: _h,
        fit: BoxFit.fitHeight,
      ),
    );
  }
}
