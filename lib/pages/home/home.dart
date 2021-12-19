import 'package:flutter/material.dart';
import 'package:flutter_resume_website/components/components.dart';
import 'package:flutter_resume_website/pages/home/components/header/header.dart';
import 'package:flutter_resume_website/pages/home/components/jobs_list/jobs_list.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final appScrollController = StateProvider<ScrollController>((ref) {
  return ScrollController();
});

class Home extends ConsumerStatefulWidget {
  @override
  ConsumerState<ConsumerStatefulWidget> createState() => HomeState();
}

class HomeState extends ConsumerState<Home> {
  final animListKey = GlobalKey<AnimatedListState>();
  late ScrollController controller;

  @override
  void initState() {
    super.initState();
    controller = ref.read(appScrollController);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        controller: controller,
        child: Container(
          margin: EdgeInsets.symmetric(horizontal: 32),
          child: Column(
            children: <Widget>[
              MenuBar(),
              Header(imageAsset: "assets/images/me_wall.jpg"),
              JobsList(
                animListKey: animListKey,
              ),
              Footer(),
            ],
          ),
        ),
      ),
      backgroundColor: Colors.white,
    );
  }
}
