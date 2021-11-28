import 'package:flutter/material.dart';
import 'package:portfolio/components/animated_progress_indicator.dart';
import 'package:portfolio/responsive.dart';

import '../../../constants.dart';

class Languages extends StatelessWidget {
  const Languages({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(52.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children:  [
          Divider(),
          Padding(
            padding: EdgeInsets.symmetric(vertical: defaultPadding),
            child: Text(
              "Languages",
              style: Responsive.isDesktop(context)
                  ? Theme.of(context).textTheme.headline4!.copyWith(
                fontWeight: FontWeight.bold,
                color: Colors.black,
              )
                  : Theme.of(context).textTheme.headline5!.copyWith(
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),            ),
          ),
          AnimatedLinearProgressIndicator(
            percentage: 0.95,
            label: "Dart",
          ),
          AnimatedLinearProgressIndicator(
            percentage: 0.75,
            label: "C#",
          ),
          AnimatedLinearProgressIndicator(
            percentage: 0.75,
            label: "Java",
          ),
          AnimatedLinearProgressIndicator(
            percentage: 0.75,
            label: "JS/node.js",
          ),
          AnimatedLinearProgressIndicator(
            percentage: 0.55,
            label: "PHP",
          ),
          AnimatedLinearProgressIndicator(
            percentage: 0.55,
            label: "C++",
          ),
        ],
      ),
    );
  }
}
