import 'package:flutter/material.dart';
import 'package:flutter_web_browser/flutter_web_browser.dart';
import 'package:portfolio/constants.dart';
import 'package:portfolio/responsive.dart';
import 'package:portfolio/ui/home/components/about_me/components/info.dart';
import 'package:url_launcher/url_launcher.dart';
import 'dart:html' as html;

class AboutMe extends StatelessWidget {
  const AboutMe({
    Key? key,
  }) : super(key: key);

  // in this class work experience, environments
  @override
  Widget build(BuildContext context) {
    return Container(
      color: secondaryColor,
      child: Padding(
        padding: const EdgeInsets.only(top: 18.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // headline of page
            Padding(
              padding: const EdgeInsets.fromLTRB(25,12,0,0),
              child: Column(children: [
                Text(
                  "ABOUT ME",
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
              ],),
            ),
            Responsive.isDesktop(context)
                ? Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      // social image
                      Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Card(
                          color: Colors.white,
                          child: Stack(
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(20.0),
                                child: Image.asset(
                                  'assets/images/shady.jpg',
                                  width: 450.0,
                                  height: 600.0,
                                  fit: BoxFit.cover,
                                ),
                              ),

                              //social column
                              Padding(
                                padding:
                                    const EdgeInsets.fromLTRB(12, 35, 0, 0),
                                child: Container(
                                  color: Colors.white,
                                  child: Padding(
                                    padding: const EdgeInsets.all(5.0),
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        GestureDetector(
                                          onTap:()=>_facebookURL(),
                                          child: Card(
                                            color: primaryColor,
                                            child: Padding(
                                              padding: const EdgeInsets.all(10.0),
                                              child: Image.asset(
                                                'icons/soial_icons/facebook.png',
                                                height: 25.0,
                                                width: 25.0,
                                                fit: BoxFit.cover,
                                              ),
                                            ),
                                          ),
                                        ),
                                        GestureDetector(
                                          onTap:()=>_tweeterURL(),
                                          child: Card(
                                            color: primaryColor,
                                            child: Padding(
                                              padding: const EdgeInsets.all(10.0),
                                              child: Image.asset(
                                                'icons/soial_icons/twitter.png',
                                                height: 25.0,
                                                width: 25.0,
                                                fit: BoxFit.cover,
                                              ),
                                            ),
                                          ),
                                        ),
                                        GestureDetector(
                                          onTap:()=>_linkedInURL(),
                                          child: Card(
                                            color: primaryColor,
                                            child: Padding(
                                              padding: const EdgeInsets.all(10.0),
                                              child: Image.asset(
                                                'icons/soial_icons/linkedin.png',
                                                height: 25.0,
                                                width: 25.0,
                                                fit: BoxFit.cover,
                                              ),
                                            ),
                                          ),
                                        ),
                                        GestureDetector(
                                          onTap:()=>_gitHubURL(),
                                          child: Card(
                                            color: primaryColor,
                                            child: Padding(
                                              padding: const EdgeInsets.all(10.0),
                                              child: Image.asset(
                                                'icons/soial_icons/github.png',
                                                height: 25.0,
                                                width: 25.0,
                                                fit: BoxFit.cover,
                                              ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Info(),
                        ],
                      )
                    ],
                  )
                : Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Responsive.isTablet(context)
                          ? Padding(
                            padding: const EdgeInsets.fromLTRB(8,8,8,15),
                            child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.all(12.0),
                                    child: Card(
                                      color: Colors.white,
                                      child: Stack(
                                        children: [
                                          Padding(
                                            padding: const EdgeInsets.all(20.0),
                                            child: Responsive.isMobileLarge(context)?
                                            Image.asset(
                                              'assets/images/shady.jpg',
                                              width: 650.0,
                                              height: 300.0,
                                              fit: BoxFit.cover,
                                            ):Image.asset(
                                              'assets/images/shady.jpg',
                                              width: 650.0,
                                              height: 500.0,
                                              fit: BoxFit.cover,
                                            ),
                                          ),
                                          //social column
                                          Padding(
                                            padding: const EdgeInsets.fromLTRB(
                                                12, 35, 0, 0),
                                            child: Container(
                                              color: Colors.white,
                                              child: Padding(
                                                padding:
                                                    const EdgeInsets.all(5.0),
                                                child: Column(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.start,
                                                  children: [
                                                    GestureDetector(
                                                      onTap:()=>_facebookURL(),
                                                      child: Card(
                                                        color: primaryColor,
                                                        child: Padding(
                                                          padding:
                                                              const EdgeInsets.all(
                                                                  10.0),
                                                          child: Image.asset(
                                                            'icons/soial_icons/facebook.png',
                                                            height: 25.0,
                                                            width: 25.0,
                                                            fit: BoxFit.cover,
                                                          ),
                                                        ),
                                                      ),
                                                    ),
                                                    GestureDetector(
                                                      onTap:()=>_tweeterURL(),
                                                      child: Card(
                                                        color: primaryColor,
                                                        child: Padding(
                                                          padding:
                                                              const EdgeInsets.all(
                                                                  10.0),
                                                          child: Image.asset(
                                                            'icons/soial_icons/twitter.png',
                                                            height: 25.0,
                                                            width: 25.0,
                                                            fit: BoxFit.cover,
                                                          ),
                                                        ),
                                                      ),
                                                    ),
                                                    GestureDetector(
                                                      onTap:()=>_linkedInURL(),
                                                      child: Card(
                                                        color: primaryColor,
                                                        child: Padding(
                                                          padding:
                                                              const EdgeInsets.all(
                                                                  10.0),
                                                          child: Image.asset(
                                                            'icons/soial_icons/linkedin.png',
                                                            height: 25.0,
                                                            width: 25.0,
                                                            fit: BoxFit.cover,
                                                          ),
                                                        ),
                                                      ),
                                                    ),
                                                    GestureDetector(
                                                      onTap:()=>_gitHubURL(),
                                                      child: Card(
                                                        color: primaryColor,
                                                        child: Padding(
                                                          padding:
                                                              const EdgeInsets.all(
                                                                  10.0),
                                                          child: Image.asset(
                                                            'icons/soial_icons/github.png',
                                                            height: 25.0,
                                                            width: 25.0,
                                                            fit: BoxFit.cover,
                                                          ),
                                                        ),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                  Info(),
                                ],
                              ),
                          )
                          : Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Responsive.isLaptop(context)
                                    ? Row(
                                        children: [
                                          //social image
                                          Padding(
                                            padding: const EdgeInsets.all(14.0),
                                            child: Card(
                                              color: Colors.white,
                                              child: Stack(
                                                children: [
                                                  Padding(
                                                    padding:
                                                        const EdgeInsets.all(
                                                            18.0),
                                                    child: Image.asset(
                                                      'assets/images/shady.jpg',
                                                      width: 310.0,
                                                      height: 550.0,
                                                      fit: BoxFit.cover,
                                                    ),
                                                  ),

                                                  //social column
                                                  Padding(
                                                    padding: const EdgeInsets
                                                        .fromLTRB(12, 35, 0, 0),
                                                    child: Container(
                                                      color: Colors.white,
                                                      child: Padding(
                                                        padding:
                                                            const EdgeInsets
                                                                .all(5.0),
                                                        child: Column(
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .start,
                                                          children: [
                                                            GestureDetector(
                                                              onTap:()=>_facebookURL(),
                                                              child: Card(
                                                                color:
                                                                    primaryColor,
                                                                child: Padding(
                                                                  padding:
                                                                      const EdgeInsets
                                                                              .all(
                                                                          10.0),
                                                                  child:
                                                                      Image.asset(
                                                                    'icons/soial_icons/facebook.png',
                                                                    height: 25.0,
                                                                    width: 25.0,
                                                                    fit: BoxFit
                                                                        .cover,
                                                                  ),
                                                                ),
                                                              ),
                                                            ),
                                                            GestureDetector(
                                                              onTap:()=>_tweeterURL(),
                                                              child: Card(
                                                                color:
                                                                    primaryColor,
                                                                child: Padding(
                                                                  padding:
                                                                      const EdgeInsets
                                                                              .all(
                                                                          10.0),
                                                                  child:
                                                                      Image.asset(
                                                                    'icons/soial_icons/twitter.png',
                                                                    height: 25.0,
                                                                    width: 25.0,
                                                                    fit: BoxFit
                                                                        .cover,
                                                                  ),
                                                                ),
                                                              ),
                                                            ),
                                                            GestureDetector(
                                                              onTap:()=>_linkedInURL(),
                                                              child: Card(
                                                                color:
                                                                    primaryColor,
                                                                child: Padding(
                                                                  padding:
                                                                      const EdgeInsets
                                                                              .all(
                                                                          10.0),
                                                                  child:
                                                                      Image.asset(
                                                                    'icons/soial_icons/linkedin.png',
                                                                    height: 25.0,
                                                                    width: 25.0,
                                                                    fit: BoxFit
                                                                        .cover,
                                                                  ),
                                                                ),
                                                              ),
                                                            ),
                                                            GestureDetector(
                                                              onTap:()=>_gitHubURL(),
                                                              child: Card(
                                                                color:
                                                                    primaryColor,
                                                                child: Padding(
                                                                  padding:
                                                                      const EdgeInsets
                                                                              .all(
                                                                          10.0),
                                                                  child:
                                                                      Image.asset(
                                                                    'icons/soial_icons/github.png',
                                                                    height: 25.0,
                                                                    width: 25.0,
                                                                    fit: BoxFit
                                                                        .cover,
                                                                  ),
                                                                ),
                                                              ),
                                                            ),
                                                          ],
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ),
                                          Column(
                                            crossAxisAlignment: CrossAxisAlignment.start,
                                            mainAxisAlignment: MainAxisAlignment.start,
                                            children: [
                                              Info(),
                                            ],
                                          ),
                                        ],
                                      )
                                    : Padding(
                                      padding: const EdgeInsets.fromLTRB(25,8,25,15),
                                      child: Column(
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          mainAxisAlignment: MainAxisAlignment.start,
                                          children: [
                                            //social image
                                            Padding(
                                              padding: const EdgeInsets.all(16.0),
                                              child: Card(
                                                color: Colors.white,
                                                child: Stack(
                                                  children: [
                                                    Padding(
                                                      padding:
                                                          const EdgeInsets.all(
                                                              20.0),
                                                      child: Image.asset(
                                                        'assets/images/shady.jpg',
                                                        width: 400.0,
                                                        height: 500.0,
                                                        fit: BoxFit.cover,
                                                      ),
                                                    ),

                                                    //social column
                                                    Padding(
                                                      padding: const EdgeInsets
                                                          .fromLTRB(12, 35, 0, 0),
                                                      child: Container(
                                                        color: Colors.white,
                                                        child: Padding(
                                                          padding:
                                                              const EdgeInsets
                                                                  .all(5.0),
                                                          child: Column(
                                                            mainAxisAlignment:
                                                                MainAxisAlignment
                                                                    .start,
                                                            children: [
                                                              GestureDetector(
                                                                onTap:()=>_facebookURL(),
                                                                child: Card(
                                                                  color:
                                                                      primaryColor,
                                                                  child: Padding(
                                                                    padding:
                                                                        const EdgeInsets
                                                                                .all(
                                                                            10.0),
                                                                    child:
                                                                        Image.asset(
                                                                      'icons/soial_icons/facebook.png',
                                                                      height: 25.0,
                                                                      width: 25.0,
                                                                      fit: BoxFit
                                                                          .cover,
                                                                    ),
                                                                  ),
                                                                ),
                                                              ),
                                                              GestureDetector(
                                                                onTap:()=>_tweeterURL(),
                                                                child: Card(
                                                                  color:
                                                                      primaryColor,
                                                                  child: Padding(
                                                                    padding:
                                                                        const EdgeInsets
                                                                                .all(
                                                                            10.0),
                                                                    child:
                                                                        Image.asset(
                                                                      'icons/soial_icons/twitter.png',
                                                                      height: 25.0,
                                                                      width: 25.0,
                                                                      fit: BoxFit
                                                                          .cover,
                                                                    ),
                                                                  ),
                                                                ),
                                                              ),
                                                              GestureDetector(
                                                                onTap: () => _linkedInURL(),
                                                                child: Card(
                                                                  color: primaryColor,
                                                                  child: Padding(
                                                                    padding:
                                                                        const EdgeInsets
                                                                                .all(
                                                                            10.0),
                                                                    child:
                                                                        Image.asset(
                                                                      'icons/soial_icons/linkedin.png',
                                                                      height: 25.0,
                                                                      width: 25.0,
                                                                      fit: BoxFit
                                                                          .cover,
                                                                    ),
                                                                  ),
                                                                ),
                                                              ),
                                                              GestureDetector(
                                                                onTap: () =>_gitHubURL(),
                                                                child: Card(
                                                                  color:
                                                                      primaryColor,
                                                                  child: Padding(
                                                                    padding:
                                                                        const EdgeInsets
                                                                                .all(
                                                                            10.0),
                                                                    child:
                                                                        Image.asset(
                                                                      'icons/soial_icons/github.png',
                                                                      height: 25.0,
                                                                      width: 25.0,
                                                                      fit: BoxFit
                                                                          .cover,
                                                                    ),
                                                                  ),
                                                                ),
                                                              ),
                                                            ],
                                                          ),
                                                        ),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ),
                                            Info(),
                                          ],
                                        ),
                                    )
                              ],
                            ),
                      //download cv button
                    ],
                  ),
          ],
        ),
      ),
    );
  }

  _linkedInURL() async {
    const url = 'https://www.linkedin.com/in/ShadyBoshra2012';
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }
  _gitHubURL() async {
    const url = 'https://github.com/ShadyBoshra2012';
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }
  _facebookURL() async {
    const url = 'https://www.facebook.com/shadyboshra2012/';
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }
  _tweeterURL() async {
    const url = 'https://twitter.com/ShadyBoshra2012';
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }
}
