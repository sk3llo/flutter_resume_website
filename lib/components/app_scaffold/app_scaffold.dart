import 'package:flutter/material.dart';
import 'package:flutter_resume_website/components/components.dart';
import 'package:flutter_resume_website/utils/app_colors.dart';
import 'package:flutter_resume_website/utils/const/const.dart';
import 'package:flutter_resume_website/utils/routes.dart';

class AppScaffold extends StatelessWidget {
  const AppScaffold({
    Key? key,
    required this.child,
    this.scrollController,
    this.backgroundColor = AppColors.white,
    this.toolBarHeight = AppDimensions.toolBarHeight,
    this.floatingToolBar = true,
    this.toolBarVisible = true,
    this.displayBackButton = false,
  }) : super(key: key);

  final Widget child;
  final Color? backgroundColor;
  final double toolBarHeight;
  final bool floatingToolBar;
  final bool toolBarVisible;
  final bool displayBackButton;
  final ScrollController? scrollController;

  @override
  Widget build(BuildContext context) {
    const String heroTag = 'app_scaffold';

    return Scaffold(
      backgroundColor: backgroundColor,
      appBar: PreferredSize(preferredSize: Size.zero, child: Container()),
      body: CustomScrollView(
        controller: scrollController,
        physics: BouncingScrollPhysics(),
        slivers: [
          if (toolBarVisible) appBarBuilder(context, heroTag),
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

  Widget appBarBuilder(BuildContext context, String heroTag) {
    return SliverAppBar(
      floating: floatingToolBar,
      elevation: 0,
      toolbarHeight: toolBarHeight,
      backgroundColor: backgroundColor,
      leading: Container(
        margin: EdgeInsets.only(left: 32),
        child: displayBackButton
            ? BackButton(
                color: Theme.of(context).buttonTheme.colorScheme!.primary,
              )
            : Container(),
      ),
      flexibleSpace: Column(
        children: [
          Container(
            padding: AppDimensions.toolBarVerticalPadding,
            margin: AppDimensions.mainHorizontalMargin,
            child: Row(
              children: [
                Opacity(
                    opacity: !displayBackButton ? 1 : 0,
                    child: leading(context)),
                Flexible(
                    child: Hero(
                  tag: heroTag,
                  child: Container(
                    alignment: Alignment.centerRight,
                    child: Wrap(
                      children: menuBarActions(context),
                    ),
                  ),
                ))
              ],
            ),
          ),
          divider,
        ],
      ),
    );
  }

  Widget leading(BuildContext context) {
    return GestureDetector(
      onTap: () => Navigator.popUntil(
          context, ModalRoute.withName(Navigator.defaultRouteName)),
      child: Text(AppStrings.devFirstName + ' ' + AppStrings.devLastName,
          style: Theme.of(context).textTheme.bodyText1),
    );
  }

  List<Widget> menuBarActions(BuildContext context) {
    return [
      MenuBarAction(
        onPressed: () => Navigator.popUntil(
          context,
          ModalRoute.withName(Navigator.defaultRouteName),
        ),
        title: AppStrings.toolbarFirstAction,
      ),
      MenuBarAction(
        onPressed: () => Navigator.pushNamed(context, Routes.style),
        title: AppStrings.toolbarSecondAction,
      ),
      MenuBarAction(
        onPressed: () => Navigator.pushNamed(context, Routes.about),
        title: AppStrings.toolbarThirdAction,
      ),
      MenuBarAction(
        onPressed: () {},
        title: AppStrings.toolbarForthAction,
      ),
    ];
  }
}
