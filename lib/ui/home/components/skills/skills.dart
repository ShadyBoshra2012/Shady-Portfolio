import 'package:flutter/material.dart';
import 'package:portfolio/constants.dart';
import 'package:portfolio/responsive.dart';
import 'package:portfolio/ui/home/components/about_me/components/human_languages.dart';
import 'package:portfolio/ui/home/components/environments.dart';
import 'package:portfolio/ui/home/components/about_me/components/info.dart';
import 'package:portfolio/ui/home/components/programming_languages.dart';

class Skills extends StatelessWidget {
  const Skills({
    Key? key,
  }) : super(key: key);

  // in this class work experience, environments
  @override
  Widget build(BuildContext context) {
    // title of skills and change front size when be mobile or tablet
    return Container(
        color: Colors.white,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            //headline of my skills text
            Padding(
              padding: const EdgeInsets.fromLTRB(25, 12, 0, 0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    "MY SKILLS",
                    style: Responsive.isDesktop(context)
                        ? Theme.of(context).textTheme.headline2!.copyWith(
                              fontWeight: FontWeight.bold,
                              fontSize: 25,
                              color: Colors.black,
                            )
                        : Theme.of(context).textTheme.subtitle2!.copyWith(
                              fontWeight: FontWeight.bold,
                              fontSize: 25,
                              color: Colors.black,
                            ),
                  ),
                  const Icon(
                    Icons.linear_scale,
                    color: primaryColor,
                  ),
                ],
              ),
            ),
            ProgrammingLanguages(),
          ],
        ));
  }
}
