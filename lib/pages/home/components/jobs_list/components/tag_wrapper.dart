import 'package:flutter/material.dart';
import 'package:flutter_resume_website/utils/const/const.dart';

import 'tag.dart';

class TagWrapper extends StatelessWidget {
  final List<Tag> tags;

  const TagWrapper({Key? key, this.tags = const []}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: AppDimensions.paddingBottom24,
        child: Wrap(
          spacing: 8,
          runSpacing: 0,
          children: <Widget>[...tags],
        ));
  }
}
