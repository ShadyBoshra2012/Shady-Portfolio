import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:portfolio/responsive.dart';

import '../../../../constants.dart';

class FrontEnd extends StatelessWidget {
  const FrontEnd({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(52.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Divider(),
          Padding(
            padding: EdgeInsets.symmetric(vertical: defaultPadding),
            child: Text(
              "Front-End",
              style: Responsive.isDesktop(context)
                  ? Theme.of(context).textTheme.headline4!.copyWith(
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      )
                  : Theme.of(context).textTheme.headline5!.copyWith(
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
            ),
          ),
          FrontEndText(text: "ReactJS"),
          FrontEndText(text: "HTML - CSS - Bootstrap"),
          FrontEndText(text: "jQuery"),
          FrontEndText(text: "XML"),
        ],
      ),
    );
  }
}

class FrontEndText extends StatelessWidget {
  const FrontEndText({
    Key? key,
    required this.text,
  }) : super(key: key);

  final String text;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(bottom: defaultPadding / 2),
      child: Row(
        children: [
          Icon(
            Icons.check,
            size: Responsive.isDesktop(context) ? 50 : 20,
            color: primaryColor,
          ),
          SizedBox(width: defaultPadding / 2),
          Text(text,
              style: TextStyle(
                fontSize: Responsive.isDesktop(context)
                    ? 30
                    : Responsive.isTablet(context)
                        ? 9
                        : 7,
              )),
        ],
      ),
    );
  }
}
