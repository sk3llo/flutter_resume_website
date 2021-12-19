import 'package:flutter/material.dart';
import 'package:flutter_resume_website/utils/constants.dart';
import 'package:flutter_resume_website/utils/routes.dart';

class MenuBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: <Widget>[
        Container(
          margin: EdgeInsets.symmetric(vertical: 30),
          child: Row(
            children: <Widget>[
              GestureDetector(
                onTap: () => Navigator.popUntil(
                    context, ModalRoute.withName(Navigator.defaultRouteName)),
                child: Text(AppConst.firstName + ' ' + AppConst.lastName,
                    style: Theme.of(context).textTheme.bodyText2),
              ),
              Flexible(
                child: Container(
                  alignment: Alignment.centerRight,
                  child: Wrap(
                    children: <Widget>[
                      TextButton(
                        onPressed: () => Navigator.popUntil(context,
                            ModalRoute.withName(Navigator.defaultRouteName)),
                        child: Text(
                          "HOME",
                          style: Theme.of(context).textTheme.button,
                        ),
                        style: ButtonStyle(
                          overlayColor:
                              MaterialStateProperty.all(Colors.transparent),
                        ),
                      ),
                      TextButton(
                        onPressed: () =>
                            Navigator.pushNamed(context, Routes.style),
                        child: Text(
                          "STYLE",
                          style: Theme.of(context).textTheme.button,
                        ),
                        style: ButtonStyle(
                          overlayColor:
                              MaterialStateProperty.all(Colors.transparent),
                        ),
                      ),
                      TextButton(
                        onPressed: () {},
                        child: Text(
                          "ABOUT",
                          style: Theme.of(context).textTheme.button,
                        ),
                        style: ButtonStyle(
                          overlayColor:
                              MaterialStateProperty.all(Colors.transparent),
                        ),
                      ),
                      TextButton(
                        onPressed: () {},
                        child: Text(
                          "CONTACT",
                          style: Theme.of(context).textTheme.button,
                        ),
                        style: ButtonStyle(
                          overlayColor:
                              MaterialStateProperty.all(Colors.transparent),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
        Container(
            height: 1,
            margin: EdgeInsets.only(bottom: 8),
            color: Color(0xFFEEEEEE)),
      ],
    );
  }
}
