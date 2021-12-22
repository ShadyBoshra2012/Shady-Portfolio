import 'package:flutter/material.dart';
import 'package:portfolio/components/animated_progress_indicator.dart';
import 'package:portfolio/responsive.dart';
import 'package:portfolio/ui/home/components/front_end.dart';

import '../../../constants.dart';

// in this class body of environment and frontend()
class Environments extends StatelessWidget {
  const Environments({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 4,
      child: Padding(
        padding: EdgeInsets.all(12.0),
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.fromLTRB(0, 18.0, 0, 30.0),
              child: Text(
                "Environments",
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
            Padding(
              padding: Responsive.isDesktop(context) &&
                  Responsive.isTablet(context)
                  ? EdgeInsets.fromLTRB(70.0, 0.0, 70.0, 0.0)
                  : EdgeInsets.all(18),
              child: Row(
                children: const [
                  Expanded(
                    child: AnimatedCircularProgressIndicator(
                      percentage: 0.9,
                      label: "Flutter",
                    ),
                  ),
                  SizedBox(width: defaultPadding),
                  Expanded(
                    child: AnimatedCircularProgressIndicator(
                      percentage: 0.75,
                      label: "Android",
                    ),
                  ),
                  SizedBox(width: defaultPadding),
                  Expanded(
                    child: AnimatedCircularProgressIndicator(
                      percentage: 0.55,
                      label: "IOS",
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: Responsive.isDesktop(context) &&
                  Responsive.isTablet(context)
                  ? EdgeInsets.fromLTRB(70.0, 0.0, 70.0, 0.0)
                  : EdgeInsets.all(18),
              child: Row(
                children: const [
                  Expanded(
                    child: AnimatedCircularProgressIndicator(
                      percentage: 0.55,
                      label: "Web",
                    ),
                  ),
                  SizedBox(width: defaultPadding),
                  Expanded(
                    child: AnimatedCircularProgressIndicator(
                      percentage: 0.75,
                      label: "WPF",
                    ),
                  ),
                  SizedBox(width: defaultPadding),
                  Expanded(
                    child: AnimatedCircularProgressIndicator(
                      percentage: 0.75,
                      label: "Git",
                    ),
                  )
                ],
              ),
            ),
            FrontEnd(),
          ],
        ),
      ),
    );
  }
}
