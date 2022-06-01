import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_resume_website/core/router/app_router.gr.dart';
import 'package:flutter_resume_website/widgets/app_scaffold/widgets/toolbar_action.dart';
import 'package:flutter_resume_website/widgets/dividers.dart';
import 'package:flutter_resume_website/core/utils/const/const.dart';

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
    late final OverlayEntry entry;
    entry = OverlayEntry(
      builder: (context) {
        return GestureDetector(
          onTap: () => entry.remove(),
          child: Container(
            color: Colors.white,
            child: Center(
              child: Wrap(
                children: toolbarActions(context),
              ),
            ),
          ),
        );
      },
    );

    return SliverAppBar(
      floating: floatingToolBar,
      elevation: 0,
      toolbarHeight: toolBarHeight,
      backgroundColor:
          backgroundColor ?? Theme.of(context).colorScheme.background,
      leading: LayoutBuilder(
        builder: (context, c) {
          if (c.maxWidth > 800) {
            return Container(
              margin: const EdgeInsets.only(left: 32),
              child: displayBackButton
                  ? BackButton(
                      color: Theme.of(context).buttonTheme.colorScheme!.primary)
                  : Container(),
            );
          } else {
            return Container();
          }
        },
      ),
      flexibleSpace: Hero(
        tag: 'toolbar',
        child: LayoutBuilder(
          builder: (context, constraints) {
            if (constraints.maxWidth > 800) {
              return buildDesktopToolbar(context, constraints);
            } else {
              return buildMobileToolbar(context, entry);
            }
          },
        ),
      ),
    );
  }

  Widget buildMobileToolbar(BuildContext context, OverlayEntry entry) {
    return Container(
      margin: AppDimensions.mainHorizontalMargin,
      child: Row(
        children: [
          CircleAvatar(
            radius: 32,
            backgroundColor: Colors.white,
            child: IconButton(
              icon: const Icon(
                Icons.menu,
              ),
              onPressed: () {
                Overlay.of(context)?.insert(entry);
              },
            ),
          ),
          const SizedBox(width: 32),
          leading(context),
        ],
      ),
    );
  }

  Widget buildDesktopToolbar(BuildContext context, BoxConstraints constraints) {
    return Column(
      children: [
        Container(
          padding: AppDimensions.toolBarVerticalPadding,
          margin: AppDimensions.mainHorizontalMargin,
          child: Row(
            children: [
              Opacity(
                  opacity: !displayBackButton ? 1 : 0, child: leading(context)),
              if (constraints.maxWidth > 800)
                Flexible(
                  child: Container(
                    alignment: Alignment.centerRight,
                    child: Wrap(
                      children: toolbarActions(context),
                    ),
                  ),
                )
            ],
          ),
        ),
        if (constraints.maxWidth > 800) divider,
      ],
    );
  }

  Widget leading(BuildContext context) {
    return Text('${AppStrings.devFirstName} ${AppStrings.devLastName}',
        style: Theme.of(context).textTheme.bodyText1);
  }

  List<Widget> toolbarActions(BuildContext context, {OverlayEntry? entry}) {
    return [
      AppToolbarAction(
        onPressed: () => context.router.popUntilRoot(),
        title: AppStrings.toolbarFirstAction,
      ),
      AppToolbarAction(
        onPressed: () => context.router.push(const AboutPageRoute()),
        title: AppStrings.toolbarThirdAction,
      ),
    ];
  }
}
