import 'package:flutter/material.dart';
import 'package:flutter_resume_website/utils/app_theme.dart';
import 'package:flutter_resume_website/utils/routes.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:responsive_framework/responsive_framework.dart';

import 'pages/pages.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ProviderScope(
      child: MaterialApp(
        theme: AppTheme.getThemeData,
        builder: (context, widget) => ResponsiveWrapper.builder(
            BouncingScrollWrapper.builder(context, widget!),
            minWidth: 450,
            defaultScale: true,
            breakpoints: [
              ResponsiveBreakpoint.resize(450, name: MOBILE),
              ResponsiveBreakpoint.autoScale(800, name: TABLET),
              ResponsiveBreakpoint.autoScale(1000, name: TABLET),
              ResponsiveBreakpoint.resize(1200, name: DESKTOP),
              ResponsiveBreakpoint.autoScale(2460, name: "4K"),
            ],
            background: Container(color: Color(0xFFF5F5F5))),
        initialRoute: Routes.home,
        onGenerateRoute: (RouteSettings settings) {
          return Routes.fadeThrough(settings, (context) {
            switch (settings.name) {
              case Routes.home:
                return Home();
              case Routes.post:
                return JobDetailsPage();
              case Routes.about:
                return AboutPage();
              default:
                return SizedBox.shrink();
            }
          })!
            // When route is popped remove last entry of it from Routes instance
            ..popped.then((_) => Routes.removeLastRoute());
        },
        debugShowCheckedModeBanner: false,
      ),
    );
  }
}
