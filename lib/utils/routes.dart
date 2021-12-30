import 'package:animations/animations.dart';
import 'package:flutter/widgets.dart';

class Routes {
  static const String home = "/";
  static const String post = "post";
  static const String about = "about";
  static List<String?> _routes = [];

  String? get getLastRoute => _routes.isEmpty ? '' : _routes.last;
  static removeLastRoute() => _routes.removeLast();

  static Route<T>? fadeThrough<T>(RouteSettings settings, WidgetBuilder page,
      {int duration = 300}) {
    if (_routes.isEmpty || _routes.last != settings.name) {
      _routes.add(settings.name);
      return PageRouteBuilder<T>(
        settings: settings,
        transitionDuration: Duration(milliseconds: duration),
        pageBuilder: (context, animation, secondaryAnimation) => page(context),
        transitionsBuilder: (context, animation, secondaryAnimation, child) {
          return FadeScaleTransition(animation: animation, child: child);
        },
      );
    } else {
      return null;
    }
  }
}
