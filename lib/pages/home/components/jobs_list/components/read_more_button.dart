import 'package:flutter/material.dart';
import 'package:flutter_resume_website/utils/app_colors.dart';

class ReadMoreButton extends StatelessWidget {
  const ReadMoreButton({
    Key? key,
    required this.onPressed,
  }) : super(key: key);

  final Function onPressed;

  @override
  Widget build(BuildContext context) {
    bool hover = false;
    return StatefulBuilder(
        builder: (BuildContext context, StateSetter setState) {
      return MouseRegion(
        onHover: (event) => setState(() => hover = true),
        onExit: (event) => setState(() => hover = false),
        child: OutlinedButton(
          onPressed: onPressed as void Function()?,
          style: ButtonStyle(
            side: MaterialStateProperty.all(
                BorderSide(color: AppColors.textPrimary, width: 2)),
            padding:
                MaterialStateProperty.all(EdgeInsets.symmetric(horizontal: 20)),
            fixedSize: MaterialStateProperty.all(Size.fromWidth(320)),
            overlayColor: MaterialStateProperty.all(AppColors.textPrimary),
          ),
          child: Text(
            "READ MORE",
            style: TextStyle(
                fontSize: 14,
                color: hover ? Colors.white : AppColors.textPrimary,
                letterSpacing: 1),
          ),
        ),
      );
    });
  }
}
