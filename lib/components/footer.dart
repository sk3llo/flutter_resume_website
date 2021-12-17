import 'package:flutter/material.dart';
import 'package:flutter_resume_website/components/text.dart';

class Footer extends StatelessWidget {
  // TODO Add additional footer components.dart (i.e. about, links, logos).
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 40),
      child: Align(
        alignment: Alignment.centerRight,
        child: TextBody(text: "Copyright © 2020"),
      ),
    );
  }
}
