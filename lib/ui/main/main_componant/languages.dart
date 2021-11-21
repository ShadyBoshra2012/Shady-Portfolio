import 'package:flutter/material.dart';
import 'package:portfolio/components/animated_progress_indicator.dart';

import '../../../constants.dart';

class Languages extends StatelessWidget {
  const Languages({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: const [
        Divider(),
        Padding(
          padding: EdgeInsets.symmetric(vertical: defaultPadding),
          child: Text(
            "Languages",
            style: TextStyle(color: Colors.black45,fontWeight: FontWeight.bold),
          ),
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
    );
  }
}
