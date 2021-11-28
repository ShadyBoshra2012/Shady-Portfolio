import 'package:flutter/material.dart';
import 'package:portfolio/components/animated_progress_indicator.dart';
import 'package:portfolio/constants.dart';
import 'package:portfolio/responsive.dart';
import 'package:portfolio/ui/main/main_componant/front_end.dart';
import 'package:portfolio/ui/main/main_componant/works_ex.dart';

class MainSkills extends StatelessWidget {
  const MainSkills({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 18.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            // padding: const EdgeInsets.symmetric(vertical: defaultPadding),
            children: [
              Container(
                  padding: const EdgeInsets.only(bottom: 8),
                  child: Icon(
                    Icons.accessibility_new,
                    size: Responsive.isDesktop(context) ? 60 : 35,
                  )),
              Text(
                "WORK EXPERIENCE",
                style: Responsive.isDesktop(context)
                    ? Theme.of(context).textTheme.headline3!.copyWith(
                          fontWeight: FontWeight.bold,
                          color: Color(0xffd5bc35),
                        )
                    : Theme.of(context).textTheme.headline5!.copyWith(
                          fontWeight: FontWeight.bold,
                          color: Color(0xffd5bc35),
                        ),
              ),
            ],
          ),
          Works_EX(),
          Row(
            children: [
              Expanded(
                flex: 5,
                child: Padding(
                  padding: const EdgeInsets.all(18.0),
                  child: Column(
                    children: [
                      Center(
                        child: Row(
                          // padding: const EdgeInsets.symmetric(vertical: defaultPadding),
                          children: [
                            Text(
                              "Skills",
                              textAlign: TextAlign.center,
                              style: Responsive.isDesktop(context)
                                  ? Theme.of(context)
                                      .textTheme
                                      .headline4!
                                      .copyWith(
                                        fontWeight: FontWeight.w900,
                                        fontSize: 180,
                                        color: Color(0xffd5bc35),
                                      )
                                  : Theme.of(context)
                                      .textTheme
                                      .headline5!
                                      .copyWith(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 55,
                                        color: Color(0xffd5bc35),
                                      ),
                            ),
                          ],
                        ),
                      ),
                      Image.asset(
                        "assets/gifts/mobile_w.gif",
                      ),
                    ],
                  ),
                ),
              ),
              Expanded(
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
                          children: [
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
              ),
            ],
          ),
        ],
      ),
    );
  }
}
