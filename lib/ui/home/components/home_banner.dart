import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:portfolio/constants.dart';
import 'package:portfolio/responsive.dart';
import 'package:portfolio/ui/main/main_componant/skills_avatar.dart';
import 'package:portfolio/ui/main/main_componant/works_ex.dart';

class HomeBanner extends StatelessWidget {
  const HomeBanner({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
          children: [
            // Image.asset(
            //   "assets/images/bg4.jpg",
            //   fit: BoxFit.cover,
            // ),
            // Container(color: darkColor.withOpacity(0.46)),
            SizedBox(height: defaultPadding*5),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: defaultPadding),
              child: Container(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [ Responsive.isDesktop(context) ?
                  Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [Responsive.isTablet(context) ?
                      Row(children: [
                        SkillsAvatar(),
                        Column(
                          children: [
                            Text(
                              "Hello",
                              style: Responsive.isDesktop(context)
                                  ? Theme.of(context)
                                  .textTheme
                                  .headline3!
                                  .copyWith(
                                fontWeight: FontWeight.bold,
                                fontSize: 70,
                                color: Color(0xff898888),
                              )
                                  : Theme.of(context)
                                  .textTheme
                                  .headline5!
                                  .copyWith(
                                fontWeight: FontWeight.bold,
                                color: Color(0xff898888),
                              ),
                            ),
                            Text(
                              "Iam Shady",
                              style: Responsive.isDesktop(context)
                                  ? Theme.of(context)
                                  .textTheme
                                  .headline3!
                                  .copyWith(
                                fontWeight: FontWeight.bold,
                                color: Color(0xffd5bc35),
                              )
                                  : Theme.of(context)
                                  .textTheme
                                  .headline5!
                                  .copyWith(
                                fontWeight: FontWeight.bold,
                                color: Color(0xffd5bc35),
                              ),
                            ),
                            // MyBuildAnimatedText(),
                            Row(children: [
                              ElevatedButton(
                                onPressed: () {},
                                style: TextButton.styleFrom(
                                  padding: EdgeInsets.symmetric(
                                      horizontal: defaultPadding * 2,
                                      vertical: defaultPadding),
                                  backgroundColor: primaryColor,
                                ),
                                child: Text(
                                  "Contact Me",
                                  style: TextStyle(color: Colors.white),
                                ),
                              ),
                              ElevatedButton(
                                onPressed: () {},
                                style: TextButton.styleFrom(
                                  padding: EdgeInsets.symmetric(
                                      horizontal: defaultPadding * 2,
                                      vertical: defaultPadding),
                                  backgroundColor: primaryColor,
                                ),
                                child: Text(
                                  "Contact Me",
                                  style: TextStyle(color: Colors.white),
                                ),
                              ),
                            ]
                            )
                          ],
                        ),
                      ],): Row(children: [
                        SkillsAvatar(),
                        Column(
                          children: [
                            Row(children: [ Text(
                              "Hello Iam ",
                              style: Responsive.isDesktop(context)
                                  ? Theme.of(context)
                                  .textTheme
                                  .headline2!
                                  .copyWith(
                                fontWeight: FontWeight.bold,
                                fontSize: 40,
                                color: Color(0xff898888),
                              )
                                  : Theme.of(context)
                                  .textTheme
                                  .headline2!
                                  .copyWith(
                                fontWeight: FontWeight.bold,
                                color: Color(0xff898888),
                              ),
                            ),
                              Text(
                              " Shady",
                              style: Responsive.isDesktop(context)
                                  ? Theme.of(context)
                                  .textTheme
                                  .headline3!
                                  .copyWith(
                                fontWeight: FontWeight.bold,
                                fontSize: 70,
                                color: Color(0xffd5bc35),
                              )
                                  : Theme.of(context)
                                  .textTheme
                                  .headline5!
                                  .copyWith(
                                fontWeight: FontWeight.bold,
                                fontSize: 50,
                                color: Color(0xffd5bc35),
                              ),
                            ),],),
                            // MyBuildAnimatedText(),
                            Row(children: [
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: ElevatedButton(
                                  onPressed: () {},
                                  style: TextButton.styleFrom(
                                    padding: EdgeInsets.symmetric(
                                        horizontal: defaultPadding,
                                        vertical: defaultPadding),
                                    backgroundColor: darkColor,
                                  ),
                                  child: Text(
                                    "About",
                                    style: TextStyle(color: Colors.white),
                                  ),
                                ),
                              ),
                              ElevatedButton(
                                onPressed: () {},
                                style: TextButton.styleFrom(
                                  padding: EdgeInsets.symmetric(
                                      horizontal: defaultPadding ,
                                      vertical: defaultPadding),
                                  backgroundColor: primaryColor,
                                ),
                                child: Text(
                                  "Contact Me",
                                  style: TextStyle(color: Colors.white),
                                ),
                              ),
                            ]
                            )
                          ],
                        ),
                      ],)

                      ],
                    ) :Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      SkillsAvatar(),
                      Column(
                        children: [
                          Text(
                            "Hello",
                            style: Responsive.isDesktop(context)
                                ? Theme.of(context)
                                .textTheme
                                .headline3!
                                .copyWith(
                              fontWeight: FontWeight.bold,
                              fontSize: 70,
                              color: Color(0xff898888),
                            )
                                : Theme.of(context)
                                .textTheme
                                .headline5!
                                .copyWith(
                              fontWeight: FontWeight.bold,
                              color: Color(0xff898888),
                            ),
                          ),
                          Text(
                            "Iam Shady",
                            style: Responsive.isDesktop(context)
                                ? Theme.of(context)
                                .textTheme
                                .headline3!
                                .copyWith(
                              fontWeight: FontWeight.bold,
                              color: Color(0xffd5bc35),
                            )
                                : Theme.of(context)
                                .textTheme
                                .headline5!
                                .copyWith(
                              fontWeight: FontWeight.bold,
                              color: Color(0xffd5bc35),
                            ),
                          ),
                          // MyBuildAnimatedText(),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: ElevatedButton(
                              onPressed: () {},
                              style: TextButton.styleFrom(
                                padding: EdgeInsets.symmetric(
                                    horizontal: defaultPadding,
                                    vertical: defaultPadding),
                                backgroundColor: darkColor,
                              ),
                              child: Text(
                                "About",
                                style: TextStyle(color: Colors.white),
                              ),
                            ),
                          ),
                          ElevatedButton(
                            onPressed: () {},
                            style: TextButton.styleFrom(
                              padding: EdgeInsets.symmetric(
                                  horizontal: defaultPadding,
                                  vertical: defaultPadding),
                              backgroundColor: primaryColor,
                            ),
                            child: Text(
                              "Contact Me",
                              style: TextStyle(color: Colors.white),
                            ),
                          ),
                        ],
                      ),

                    ],
                  ),
                  ],
                ),
              ),
            ),
            SizedBox(height: defaultPadding*10),
          ],
    );
  }
}

class MyBuildAnimatedText extends StatelessWidget {
  const MyBuildAnimatedText({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTextStyle(
      // it applies same style to all the widgets under it
      style: Theme.of(context).textTheme.subtitle1!,
      maxLines: 1,
      child: Row(
        children: [
          // if (!Responsive.isMobileLarge(context)),
          if (!Responsive.isMobileLarge(context))
            SizedBox(width: defaultPadding / 2),
          Text("I am "),
          Responsive.isMobile(context)
              ? Expanded(child: AnimatedText())
              : AnimatedText(),
          if (!Responsive.isMobileLarge(context))
            SizedBox(width: defaultPadding / 2),
          // if (!Responsive.isMobileLarge(context)) ,
        ],
      ),
    );
  }
}

class AnimatedText extends StatelessWidget {
  const AnimatedText({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AnimatedTextKit(
      animatedTexts: [
        TyperAnimatedText(
          "Mid level Flutter developer",
          textStyle: TextStyle(color: Colors.black),
          speed: Duration(milliseconds: 60),
        ),
        TyperAnimatedText(
          "Founder of Be Light Tech",
          textStyle: TextStyle(color: Colors.black),
          speed: Duration(milliseconds: 60),
        ),
      ],
    );
  }
}

class FlutterCodedText extends StatelessWidget {
  const FlutterCodedText({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Text.rich(
      TextSpan(
        text: "<",
        children: [
          TextSpan(
            text: " Hi Friends ",
            style: TextStyle(color: primaryColor),
          ),
          TextSpan(text: ">"),
        ],
      ),
    );
  }
}
