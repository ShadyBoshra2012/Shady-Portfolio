import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:portfolio/constants.dart';
import 'package:portfolio/responsive.dart';

class HomeBanner extends StatelessWidget {
  const HomeBanner({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Responsive.isDesktop(context)
            ? Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Responsive.isTablet(context)
                      ? Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Flexible(
                              child: Padding(
                                padding: const EdgeInsets.all(40.0),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Text(
                                      "Hello there...",
                                      style: Responsive.isDesktop(context)
                                          ? Theme.of(context)
                                              .textTheme
                                              .headline3!
                                              .copyWith(
                                                fontWeight: FontWeight.bold,
                                                fontSize: 20,
                                                color: Colors.black,
                                              )
                                          : Theme.of(context)
                                              .textTheme
                                              .headline5!
                                              .copyWith(
                                                fontWeight: FontWeight.bold,
                                                color: Colors.black,
                                              ),
                                    ),
                                    Text(
                                      "Shady Boshra",
                                      style: Responsive.isDesktop(context)
                                          ? Theme.of(context)
                                              .textTheme
                                              .headline6!
                                              .copyWith(
                                                fontSize: 75,
                                                fontWeight: FontWeight.bold,
                                                color: Colors.black,
                                              )
                                          : Theme.of(context)
                                              .textTheme
                                              .headline5!
                                              .copyWith(
                                                fontSize: 30,
                                                fontWeight: FontWeight.bold,
                                                color: Colors.black,
                                              ),
                                    ),
                                    MyBuildAnimatedText(),
                                    Expanded(
                                      flex: 3,
                                      child: Text(
                                        "The namics of how users interact with interactive elements within \na user interface flow chart based on container proportion.",
                                        style: Theme.of(context).textTheme.headline4!.copyWith(
                                          fontSize: 12,
                                          color: Colors.black87,
                                        ),
                                        textAlign: TextAlign.justify,
                                        overflow: TextOverflow.ellipsis,
                                        maxLines: 5,

                                      ),
                                    ),

                                    Padding(
                                      padding: const EdgeInsets.only(top: 20.0),
                                      child: Row(children: [
                                        ElevatedButton(
                                          onPressed: () {},
                                          style: TextButton.styleFrom(
                                            padding: const EdgeInsets.symmetric(
                                                horizontal: defaultPadding * 2,
                                                vertical: defaultPadding),
                                            backgroundColor: primaryColor,
                                          ),
                                          child: const Text(
                                            "MY WORK",
                                            style: TextStyle(color: Colors.white),
                                          ),
                                        ),
                                        SizedBox(width: defaultPadding),
                                        OutlinedButton(
                                          onPressed: () {},
                                          style: OutlinedButton.styleFrom(
                                            side: const BorderSide(
                                                width: 1.0, color: primaryColor),
                                            padding: const EdgeInsets.symmetric(
                                                horizontal: defaultPadding,
                                                vertical: defaultPadding),
                                          ),
                                          child: const Text(
                                            "HIRE ME",
                                            style: TextStyle(color: primaryColor),
                                          ),
                                        ),
                                      ]),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Spacer(),
                            Image.asset(
                              'assets/images/shady.jpg',
                              width: 500.0,
                              height: 1000.0,
                              fit: BoxFit.cover,
                            ),
                          ],
                        )
                      // this is when be large screen
                      : Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(150.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Text(
                                    "Hello there...",
                                    style: Responsive.isDesktop(context)
                                        ? Theme.of(context)
                                            .textTheme
                                            .headline3!
                                            .copyWith(
                                              fontWeight: FontWeight.normal,
                                              fontSize: 20,
                                              color: Colors.black,
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
                                    "Shady Boshra",
                                    style: Responsive.isDesktop(context)
                                        ? Theme.of(context)
                                            .textTheme
                                            .headline3!
                                            .copyWith(
                                              fontSize: 50,
                                              fontWeight: FontWeight.bold,
                                              color: Colors.black,
                                            )
                                        : Theme.of(context)
                                            .textTheme
                                            .headline5!
                                            .copyWith(
                                              fontSize: 30,
                                              fontWeight: FontWeight.bold,
                                              color: Colors.black,
                                            ),
                                  ),
                                  MyBuildAnimatedText(),
                                  Padding(
                                    padding: const EdgeInsets.only(top: 8.0),
                                    child: Text(
                                      "The namics of how users interact with interactive elements within \na user interface flow chart based on container proportion.",
                                      style: Theme.of(context).textTheme.headline5!.copyWith(
                                        fontSize: 13,
                                        color: Colors.black87,
                                      ),
                                      textAlign: TextAlign.justify,
                                      overflow: TextOverflow.ellipsis,
                                      maxLines: 5,

                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(top: 20.0),
                                    child: Row(children: [
                                      ElevatedButton(
                                        onPressed: () {},
                                        style: TextButton.styleFrom(
                                          padding: EdgeInsets.symmetric(
                                              horizontal: defaultPadding * 2,
                                              vertical: defaultPadding),
                                          backgroundColor: primaryColor,
                                        ),
                                        child: Text(
                                          "MY WORK",
                                          style: TextStyle(color: Colors.white),
                                        ),
                                      ),
                                      SizedBox(width: defaultPadding),
                                      OutlinedButton(
                                        onPressed: () {},
                                        style: OutlinedButton.styleFrom(
                                          side: BorderSide(
                                              width: 1.0, color: primaryColor),
                                          padding: const EdgeInsets.symmetric(
                                              horizontal: defaultPadding,
                                              vertical: defaultPadding),
                                        ),
                                        child: const Text(
                                          "HIRE ME",
                                          style: TextStyle(color: primaryColor),
                                        ),
                                      ),
                                    ]),
                                  )
                                ],
                              ),
                            ),
                            Spacer(),
                            Image.asset(
                              'assets/images/shady.jpg',
                              width: 600.0,
                              height: 780.0,
                              fit: BoxFit.cover,
                            ),
                          ],
                        )
                ],
              )
            : Responsive.isMobileLarge(context)
                ? Stack(
                    children: [
                      Image.asset(
                        'assets/images/shady.jpg',
                        width: 425.0,
                        height: 600.0,
                        fit: BoxFit.cover,
                      ),
                      Center(
                        child: Container(
                          margin: Responsive.isMobileLarge(context)?EdgeInsets.fromLTRB(32, 120, 32, 0):EdgeInsets.fromLTRB(40, 120, 40, 0),
                          color: Colors.white70,
                          child: Padding(
                            padding: Responsive.isMobileLarge(context)? EdgeInsets.fromLTRB(12, 30, 12, 30):EdgeInsets.fromLTRB(22, 30, 12, 30),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Text(
                                  "Hello there...",
                                  style: Responsive.isDesktop(context)
                                      ? Theme.of(context)
                                          .textTheme
                                          .headline3!
                                          .copyWith(
                                            fontWeight: FontWeight.normal,
                                            fontSize: 20,
                                            color: Colors.black,
                                          )
                                      : Theme.of(context)
                                          .textTheme
                                          .headline5!
                                          .copyWith(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 20,
                                            color: Colors.black,
                                          ),
                                ),
                                Text(
                                  "Shady Boshra",
                                  style: Responsive.isDesktop(context)
                                      ? Theme.of(context)
                                          .textTheme
                                          .headline3!
                                          .copyWith(
                                            fontSize: 50,
                                            fontWeight: FontWeight.bold,
                                            color: Colors.black,
                                          )
                                      : Theme.of(context)
                                          .textTheme
                                          .headline5!
                                          .copyWith(
                                            fontSize: 30,
                                            fontWeight: FontWeight.bold,
                                            color: Colors.black,
                                          ),
                                ),
                                MyBuildAnimatedText(),
                                // no new line in phone screen
                                Padding(
                                  padding: const EdgeInsets.only(top: 8.0),
                                  child: Text(
                                    "The names of how users interact with interactive elements within a user interface flow chart based on container proportion.",
                                    style: Theme.of(context).textTheme.headline5!.copyWith(
                                      fontSize: 10,
                                      color: Colors.black87,
                                    ),
                                    textAlign: TextAlign.justify,
                                    overflow: TextOverflow.ellipsis,
                                    maxLines: 5,

                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(top: 20.0),
                                  child: Row(children: [
                                    ElevatedButton(
                                      onPressed: () {},
                                      style: TextButton.styleFrom(
                                        padding: const EdgeInsets.symmetric(
                                            horizontal: defaultPadding * 2,
                                            vertical: defaultPadding),
                                        backgroundColor: primaryColor,
                                      ),
                                      child: const Text(
                                        "MY WORK",
                                        style: TextStyle(color: Colors.white),
                                      ),
                                    ),
                                    SizedBox(width: defaultPadding),
                                    OutlinedButton(
                                      onPressed: () {},
                                      style: OutlinedButton.styleFrom(
                                        side: BorderSide(
                                            width: 1.0, color: primaryColor),
                                        padding: const EdgeInsets.symmetric(
                                            horizontal: defaultPadding,
                                            vertical: defaultPadding),
                                      ),
                                      child: const Text(
                                        "HIRE ME",
                                        style: TextStyle(color: primaryColor),
                                      ),
                                    ),
                                  ]),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  )
        // this screen when be laptop and tablet
                : Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.fromLTRB(60.0,200,0,0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text(
                              "Hello there...",
                              style: Responsive.isDesktop(context)
                                  ? Theme.of(context)
                                      .textTheme
                                      .headline3!
                                      .copyWith(
                                        fontWeight: FontWeight.normal,
                                        fontSize: 20,
                                        color: Colors.black,
                                      )
                                  : Theme.of(context)
                                      .textTheme
                                      .headline5!
                                      .copyWith(
                                       fontSize: 16,
                                        color: Colors.black,
                                      ),
                            ),
                            Text(
                              "Shady Boshra",
                              style: Responsive.isDesktop(context)
                                  ? Theme.of(context)
                                      .textTheme
                                      .headline3!
                                      .copyWith(
                                        fontSize: 50,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.black,
                                      )
                                  : Theme.of(context)
                                      .textTheme
                                      .headline6!
                                      .copyWith(
                                        fontSize: 35,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.black,
                                      ),
                            ),
                            MyBuildAnimatedText(),
                            Responsive.isTablet(context)?
                            Padding(
                              padding: const EdgeInsets.only(top: 8.0),
                              child: Text(
                                "The names of how users interact with interactive \nelements within a user interface flow chart \nbased on container proportion.",
                                style: Theme.of(context).textTheme.subtitle1!.copyWith(
                                  fontSize: 11,
                                  color: Colors.black87,
                                ),
                                textAlign: TextAlign.justify,
                                overflow: TextOverflow.ellipsis,
                                maxLines: 5,

                              ),
                            )
                                : Padding(
                                  padding: const EdgeInsets.only(top: 8.0),
                                  child: Text(
                              "The namics of how users interact with interactive elements within \na user interface flow chart based on container proportion.",
                              style: Theme.of(context).textTheme.subtitle1!.copyWith(
                                  fontSize: 13,
                                color: Colors.black87,
                              ),
                              textAlign: TextAlign.justify,
                              overflow: TextOverflow.ellipsis,
                              maxLines: 5,

                            ),
                                ),
                            Padding(
                              padding: const EdgeInsets.only(top: 20.0),
                              child: Row(children: [
                                ElevatedButton(
                                  onPressed: () {},
                                  style: TextButton.styleFrom(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: defaultPadding * 2,
                                        vertical: defaultPadding),
                                    backgroundColor: primaryColor,
                                  ),
                                  child: const Text(
                                    "MY WORK",
                                    style: TextStyle(color: Colors.white),
                                  ),
                                ),
                                SizedBox(width: defaultPadding),
                                OutlinedButton(
                                  onPressed: () {},
                                  style: OutlinedButton.styleFrom(
                                    side: BorderSide(
                                        width: 1.0, color: primaryColor),
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: defaultPadding,
                                        vertical: defaultPadding),
                                  ),
                                  child: const Text(
                                    "HIRE ME",
                                    style: TextStyle(color: primaryColor),
                                  ),
                                ),
                              ]),
                            ),
                          ],
                        ),
                      ),
                      Spacer(),
                      Image.asset(
                        'assets/images/shady.jpg',
                        width: 400.0,
                        height: 600.0,
                        fit: BoxFit.cover,
                      ),
                    ],
                  ),
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
      style: TextStyle(color: Colors.black),
      maxLines: 1,
      child: Row(
        children: [
          // if (!Responsive.isMobileLarge(context)),
          if (!Responsive.isMobileLarge(context))
          Text("I am ", style: TextStyle(color: Colors.black)),
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
