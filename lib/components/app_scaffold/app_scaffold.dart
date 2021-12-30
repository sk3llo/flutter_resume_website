import 'package:flutter/material.dart';
import 'package:flutter_resume_website/components/components.dart';
import 'package:flutter_resume_website/utils/const/const.dart';

class AppScaffold extends StatelessWidget {
  const AppScaffold({
    Key? key,
    required this.child,
    this.scrollController,
    this.backgroundColor,
    this.toolbarBackgroundColor,
    this.toolBarHeight = AppDimensions.toolBarHeight,
    this.floatingToolBar = true,
    this.toolBarVisible = true,
    this.displayBackButton = false,
  }) : super(key: key);

  final Widget child;
  final Color? backgroundColor;
  final Color? toolbarBackgroundColor;
  final double toolBarHeight;
  final bool floatingToolBar;
  final bool toolBarVisible;
  final bool displayBackButton;
  final ScrollController? scrollController;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:
          backgroundColor ?? Theme.of(context).colorScheme.background,
      appBar: PreferredSize(preferredSize: Size.zero, child: Container()),
      body: CustomScrollView(
        controller: scrollController,
        physics: BouncingScrollPhysics(),
        slivers: [
          if (toolBarVisible)
            SliverAppToolbar(
              displayBackButton: displayBackButton,
              toolBarVisible: toolBarVisible,
              floatingToolBar: floatingToolBar,
              toolBarHeight: toolBarHeight,
              backgroundColor: toolbarBackgroundColor,
            ),
          SliverToBoxAdapter(
            child: Container(
              margin: AppDimensions.mainHorizontalMargin,
              padding: AppDimensions.paddingTop12,
              child: child,
            ),
          ),
        ],
      ),
    );
  }
}
