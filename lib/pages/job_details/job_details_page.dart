import 'package:flutter/material.dart';
import 'package:flutter_resume_website/components/components.dart';
import 'package:flutter_resume_website/pages/home/components/jobs_list/components/components.dart';
import 'package:flutter_resume_website/utils/const/const.dart';

import 'components/components.dart';

class JobDetailsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return AppScaffold(
      child: Column(
        children: <Widget>[
          ImageWrapper(
            image: "assets/images/mugs_side_bw_w1080.jpg",
          ),
          Align(
            alignment: Alignment.centerLeft,
            child: Container(
              margin: AppDimensions.paddingBottom12,
              child: Text(
                "A BETTER BLOG FOR WRITING",
                style: Theme.of(context).textTheme.headline1,
              ),
            ),
          ),
          Align(
            alignment: Alignment.centerLeft,
            child: TextBodySecondary(text: "Writing  /  Project"),
          ),
          Align(
            alignment: Alignment.centerLeft,
            child: TextBody(text: "DEV"),
          ),
          Align(
            alignment: Alignment.centerLeft,
            child: TextBody(text: "DEV"),
          ),
          Align(
            alignment: Alignment.centerLeft,
            child: TextHeadlineSecondary(text: "Secondary Headline Example"),
          ),
          Align(
            alignment: Alignment.centerLeft,
            child: TextBody(text: "DEV"),
          ),
          TextBlockquote(text: "DEV"),
          Align(
            alignment: Alignment.centerLeft,
            child: TextBody(text: "DEV"),
          ),
          Align(
            alignment: Alignment.centerLeft,
            child: TagWrapper(tags: [
              Tag(tag: "Writing"),
              Tag(tag: "Photography"),
              Tag(tag: "Development")
            ]),
          ),
          ...authorSection(context,
              imageUrl: "assets/images/avatar_default.png",
              name: "Type Pages",
              bio: "DEV"),
          divider,
          // Footer
          Footer(),
        ],
      ),
    );
  }
}
