import 'package:flutter/material.dart';
import 'package:portfolio/components/animated_progress_indicator.dart';
import 'package:portfolio/constants.dart';
import 'package:portfolio/responsive.dart';
import 'package:portfolio/ui/main/main_componant/environments.dart';
import 'package:portfolio/ui/main/main_componant/front_end.dart';
import 'package:portfolio/ui/main/main_componant/scoial_btns.dart';
import 'package:portfolio/ui/main/main_componant/works_ex.dart';

class MainSkills extends StatelessWidget {
  const MainSkills({
    Key? key,
  }) : super(key: key);

  // in this class work experience, environments
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
              // this is title of work experience and gift
              Container(
                  padding: const EdgeInsets.only(bottom: 8),
                  child: buildSocialButton(
                    image: "gifts/facebook.gif",
                  )
              ),
              Text(
                "  WORK EXPERIENCE",
                style: Responsive.isDesktop(context)
                    ? Theme.of(context).textTheme.headline5!.copyWith(
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
          // work experience
          Works_EX(),
          // title of skills and change front size when be mobile or tablet
          Row(
            children: [
              if(Responsive.isDesktop(context))
              Expanded(
                flex: 5,
                child: Padding(
                  padding: const EdgeInsets.all(18.0),
                  child: Column(
                    children: [
                      Center(
                        child:  Text(
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
                      ),
                      Image.asset(
                        "assets/gifts/mobile_w.gif",
                      ),
                    ],
                  ),
                ),
              ),
              Environments(),
            ],
          ),
        ],
      ),
    );
  }
}
