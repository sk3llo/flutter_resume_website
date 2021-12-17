import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_resume_website/utils/constants.dart';

class JobsListBloc extends Cubit<List<bool>> {
  JobsListBloc({
    required this.controller,
    required this.animListKey,
  }) : super([]);

  final ScrollController controller;
  final GlobalKey<AnimatedListState> animListKey;

  static const approximateWidgetSize = 250;

  void listenToScrollChanges() {
    controller.addListener(() {
      final offset = controller.offset;
      final currentMaxOffset = approximateWidgetSize * (state.length + 1);

      if (offset > currentMaxOffset) {
        animListKey.currentState!
            .insertItem(state.length, duration: AppConst.animDuration);
        state.add(false);
        emit(state);
      }
    });
  }
}
