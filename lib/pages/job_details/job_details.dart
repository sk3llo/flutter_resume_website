import 'package:flutter/material.dart';
import 'package:flutter_resume_website/components/components.dart';
import 'package:flutter_resume_website/pages/home/components/job/components/components.dart';
import 'package:flutter_resume_website/utils/spacing.dart';

import 'components/components.dart';

class JobDetails extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          margin: EdgeInsets.symmetric(horizontal: 32),
          child: Column(
            children: <Widget>[
              MenuBar(),
              ImageWrapper(
                image: "assets/images/mugs_side_bw_w1080.jpg",
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: Container(
                  margin: paddingBottom12,
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
                child:
                    TextHeadlineSecondary(text: "Secondary Headline Example"),
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
        ),
      ),
      backgroundColor: Colors.white,
    );
  }
}
