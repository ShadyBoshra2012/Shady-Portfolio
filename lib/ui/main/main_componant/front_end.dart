import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../../constants.dart';

class FrontEnd extends StatelessWidget {
  const FrontEnd({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: const [
        Divider(),
        Padding(
          padding: EdgeInsets.symmetric(
              vertical: defaultPadding),
          child: Text(
            "Front-End",
            style: TextStyle(color: Colors.black45,fontWeight: FontWeight.bold),
          ),
        ),
        FrontEndText(text: "ReactJS"),
        FrontEndText(text: "HTML - CSS - Bootstrap"),
        FrontEndText(text: "jQuery"),
        FrontEndText(text: "XML"),
      ],
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
      padding: const EdgeInsets.only(bottom: defaultPadding / 2),
      child: Row(
        children: [
          SvgPicture.asset("assets/icons/check.svg"),
          SizedBox(width: defaultPadding / 2),
          Text(text),
        ],
      ),
    );
  }
}