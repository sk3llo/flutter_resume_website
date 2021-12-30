import 'package:flutter/material.dart';
import 'package:flutter_resume_website/components/app_scaffold/components/toolbar_action.dart';
import 'package:flutter_resume_website/components/dividers.dart';
import 'package:flutter_resume_website/utils/const/const.dart';
import 'package:flutter_resume_website/utils/routes.dart';

class SliverAppToolbar extends StatelessWidget {
  const SliverAppToolbar({
    Key? key,
    required this.displayBackButton,
    required this.toolBarVisible,
    this.backgroundColor,
    this.toolBarHeight = AppDimensions.toolBarHeight,
    this.floatingToolBar = true,
  }) : super(key: key);

  final bool displayBackButton;
  final bool toolBarVisible;
  final Color? backgroundColor;
  final double toolBarHeight;
  final bool floatingToolBar;

  @override
  Widget build(BuildContext context) {
    const String heroTag = 'app_scaffold';

    return SliverAppBar(
      floating: floatingToolBar,
      elevation: 0,
      toolbarHeight: toolBarHeight,
      backgroundColor:
          backgroundColor ?? Theme.of(context).colorScheme.background,
      leading: Container(
        margin: EdgeInsets.only(left: 32),
        child: displayBackButton
            ? BackButton(
                color: Theme.of(context).buttonTheme.colorScheme!.primary)
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
                      children: toolbarActions(context),
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

  List<Widget> toolbarActions(BuildContext context) {
    return [
      AppToolbarAction(
        onPressed: () => Navigator.popUntil(
          context,
          ModalRoute.withName(Navigator.defaultRouteName),
        ),
        title: AppStrings.toolbarFirstAction,
      ),
      AppToolbarAction(
        onPressed: () => Navigator.pushNamed(context, Routes.about),
        title: AppStrings.toolbarThirdAction,
      ),
    ];
  }
}
