import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_resume_website/utils/const/const.dart';

class JobsListBloc extends Cubit<List<bool>> {
  JobsListBloc({
    required this.controller,
    required this.animListKey,
  }) : super([]);

  final ScrollController controller;
  final GlobalKey<AnimatedListState> animListKey;

  void listenToScrollChanges() {
    final offset = controller.offset;
    final currentMaxOffset =
        (AppDimensions.jobWidgetHeight - 50) * (state.length + 1);

    if (offset > currentMaxOffset) {
      animListKey.currentState!
          .insertItem(state.length, duration: AppAnim.defaultAnimDuration);
      state.add(false);
      emit(state);
    }
  }
}
