import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_resume_website/pages/home/components/jobs_list/jobs_list_bloc.dart';
import 'package:flutter_resume_website/pages/home/home.dart';
import 'package:flutter_resume_website/utils/constants.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class JobsList extends ConsumerStatefulWidget {
  const JobsList({
    Key? key,
    required this.animListKey,
  }) : super(key: key);

  final GlobalKey<AnimatedListState> animListKey;

  @override
  ConsumerState createState() => JobsListState();
}

class JobsListState extends ConsumerState<JobsList> {
  late JobsListBloc bloc;
  late ScrollController controller;

  @override
  void initState() {
    controller = ref.read(appScrollController);
    bloc = JobsListBloc(
      controller: controller,
      animListKey: widget.animListKey,
    );
    bloc.listenToScrollChanges();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final jobs = AppConst.listOfJobs;

    return BlocBuilder<JobsListBloc, List<bool>>(
        bloc: bloc,
        builder: (context, state) {
          return AnimatedList(
              key: widget.animListKey,
              physics: NeverScrollableScrollPhysics(),
              initialItemCount: jobs.length,
              shrinkWrap: true,
              itemBuilder: (context, pos, anim) {
                if (pos < jobs.length) {
                  return Opacity(
                    opacity: state.length - 1 >= pos ? 1 : 0,
                    child: FadeTransition(
                      opacity: Tween<double>(
                        begin: 0.0,
                        end: 1.0,
                      ).animate(anim),
                      child: SlideTransition(
                        position: Tween(
                          // Every second item slides from the left
                          begin: Offset(pos % 2 == 0 ? 1 : -1, 0),
                          end: Offset(0, 0),
                        ).animate(anim),
                        child: jobs[pos],
                      ),
                    ),
                  );
                } else {
                  return Container();
                }
              });
        });
  }
}
