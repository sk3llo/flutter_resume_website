import 'package:flutter/material.dart';

class Tag extends StatelessWidget {
  final String tag;

  const Tag({Key? key, required this.tag}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      onPressed: () {},
      child: Text(
        tag,
        style: const TextStyle(color: Colors.white, fontSize: 14),
      ),
      fillColor: Color(0xFF242424),
      padding: EdgeInsets.symmetric(horizontal: 16),
      elevation: 0,
      hoverElevation: 0,
      hoverColor: Color(0xFFC7C7C7),
      highlightElevation: 0,
      focusElevation: 0,
    );
  }
}
