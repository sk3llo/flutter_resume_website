import 'package:flutter/material.dart';

class AppToolbarAction extends StatelessWidget {
  const AppToolbarAction({
    Key? key,
    required this.onPressed,
    required this.title,
  }) : super(key: key);

  final VoidCallback onPressed;
  final String title;

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onPressed,
      child: Text(
        title,
        style: Theme.of(context).textTheme.button,
      ),
      style: ButtonStyle(
        overlayColor: MaterialStateProperty.all(Colors.transparent),
      ),
    );
  }
}
