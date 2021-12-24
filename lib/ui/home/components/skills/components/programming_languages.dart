import 'package:flutter/material.dart';
import 'package:portfolio/components/animated_progress_indicator.dart';
import 'package:portfolio/constants.dart';
import 'package:portfolio/responsive.dart';

class ProgrammingLanguages extends StatelessWidget {
  const ProgrammingLanguages({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(52.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
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
                      ),
            ),
          ),
          const AnimatedLinearProgressIndicator(
            percentage: 0.95,
            label: "Dart",
          ),
          const AnimatedLinearProgressIndicator(
            percentage: 0.75,
            label: "C#",
          ),
          const AnimatedLinearProgressIndicator(
            percentage: 0.75,
            label: "Java",
          ),
          const AnimatedLinearProgressIndicator(
            percentage: 0.75,
            label: "JS/node.js",
          ),
          const AnimatedLinearProgressIndicator(
            percentage: 0.55,
            label: "PHP",
          ),
          const AnimatedLinearProgressIndicator(
            percentage: 0.55,
            label: "C++",
          ),
        ],
      ),
    );
  }
}
