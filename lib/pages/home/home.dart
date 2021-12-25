import 'package:flutter/material.dart';
import 'package:flutter_resume_website/components/components.dart';
import 'package:flutter_resume_website/pages/home/components/header/header.dart';
import 'package:flutter_resume_website/pages/home/components/jobs_list/jobs_list.dart';
import 'package:flutter_resume_website/utils/app_images.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final homeScrollController = StateProvider<ScrollController>((ref) {
  return ScrollController();
});

class Home extends ConsumerWidget {
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final scrollController = ref.read(homeScrollController);

    return AppScaffold(
      scrollController: scrollController,
      child: Column(
        children: <Widget>[
          Header(imageAsset: AppImages.devFirstImage),
          JobsList(),
          Footer(),
        ],
      ),
    );
  }
}
