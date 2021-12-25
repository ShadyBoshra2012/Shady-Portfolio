import 'package:flutter/material.dart';
import 'package:portfolio/constants.dart';
import 'package:portfolio/responsive.dart';

class PersonalInformation extends StatelessWidget {
  const PersonalInformation({
    Key? key,
  }) : super(key: key);

  // in this class work experience, environments
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        //title of personal data
        Padding(
          padding: EdgeInsets.fromLTRB(0,25,25,10),
          child: Text(
            "PERSONAL INFORMATION",
            style: Responsive.isDesktop(context)
                ? Theme.of(context).textTheme.headline5!.copyWith(
              fontWeight: FontWeight.w200,
              color: Colors.black,
            )
                : Theme.of(context).textTheme.headline6!.copyWith(
              fontWeight: FontWeight.w200,
              color: Colors.black,
            ),
          ),
        ),
        Responsive.isMobileLarge(context)
                ?Column(children: [
                    Row(
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(bottom: 8.0),
                              child: Text("Date of Birth",
                                style: Responsive.isDesktop(context)
                                    ? Theme.of(context).textTheme.headline4!.copyWith(
                                  fontSize: 13,
                                  color: Colors.black,
                                )
                                    : Theme.of(context).textTheme.headline6!.copyWith(
                                  fontSize: 10,
                                  color: Colors.black,
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(bottom: 8.0),
                              child: Text("Nationality",
                                style: Responsive.isDesktop(context)
                                    ? Theme.of(context).textTheme.headline4!.copyWith(
                                  fontSize: 13,
                                  color: Colors.black,
                                )
                                    : Theme.of(context).textTheme.headline6!.copyWith(
                                  fontSize: 10,
                                  color: Colors.black,
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(bottom: 8.0),
                              child: Text("Martial",
                                style: Responsive.isDesktop(context)
                                    ? Theme.of(context).textTheme.headline4!.copyWith(
                                  fontSize: 13,
                                  color: Colors.black,
                                )
                                    : Theme.of(context).textTheme.headline6!.copyWith(
                                  fontSize: 10,
                                  color: Colors.black,
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(bottom: 8.0),
                              child: Text("Military",
                                style: Responsive.isDesktop(context)
                                    ? Theme.of(context).textTheme.headline4!.copyWith(
                                  fontSize: 13,
                                  color: Colors.black,
                                )
                                    : Theme.of(context).textTheme.headline6!.copyWith(
                                  fontSize: 10,
                                  color: Colors.black,
                                ),
                              ),
                            ),
                            const SizedBox(height: defaultPadding / 2),
                          ],
                        ),
                        const SizedBox(width:defaultPadding*2),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(bottom: 8.0),
                              child: Text("|        08 Aug, 1998",
                                style: Responsive.isDesktop(context)
                                    ? Theme.of(context).textTheme.headline4!.copyWith(
                                  fontSize: 13,
                                  color: Colors.black54,
                                )
                                    : Theme.of(context).textTheme.headline6!.copyWith(
                                  fontSize: 10,
                                  color: Colors.black54,
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(bottom: 8.0),
                              child: Text("|        Egyptian",
                                style: Responsive.isDesktop(context)
                                    ? Theme.of(context).textTheme.headline4!.copyWith(
                                  fontSize: 13,
                                  color: Colors.black54,
                                )
                                    : Theme.of(context).textTheme.headline6!.copyWith(
                                  fontSize: 10,
                                  color: Colors.black54,
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(bottom: 8.0),
                              child: Text("|        Single",
                                style: Responsive.isDesktop(context)
                                    ? Theme.of(context).textTheme.headline4!.copyWith(
                                  fontSize: 13,
                                  color: Colors.black54,
                                )
                                    : Theme.of(context).textTheme.headline6!.copyWith(
                                  fontSize: 10,
                                  color: Colors.black54,
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(bottom: 8.0),
                              child: Text("|        Final Exemption",
                                style: Responsive.isDesktop(context)
                                    ? Theme.of(context).textTheme.headline4!.copyWith(
                                  fontSize: 13,
                                  color: Colors.black54,
                                )
                                    : Theme.of(context).textTheme.headline6!.copyWith(
                                  fontSize: 10,
                                  color: Colors.black54,
                                ),
                              ),
                            ),
                            SizedBox(height: defaultPadding / 2),
                          ],
                        ),
                      ],
                    ),
                    const SizedBox(height:defaultPadding/2),
                    Row(
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(bottom: 8.0),
                              child: Text("Email",
                                style: Responsive.isDesktop(context)
                                    ? Theme.of(context).textTheme.headline4!.copyWith(
                                  fontSize: 13,
                                  color: Colors.black,
                                )
                                    : Theme.of(context).textTheme.headline6!.copyWith(
                                  fontSize: 10,
                                  color: Colors.black,
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(bottom: 8.0),
                              child: Text("Phone",
                                style: Responsive.isDesktop(context)
                                    ? Theme.of(context).textTheme.headline4!.copyWith(
                                  fontSize: 13,
                                  color: Colors.black,
                                )
                                    : Theme.of(context).textTheme.headline6!.copyWith(
                                  fontSize: 10,
                                  color: Colors.black,
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(bottom: 8.0),
                              child: Text("Address",
                                style: Responsive.isDesktop(context)
                                    ? Theme.of(context).textTheme.headline4!.copyWith(
                                  fontSize: 13,
                                  color: Colors.black,
                                )
                                    : Theme.of(context).textTheme.headline6!.copyWith(
                                  fontSize: 10,
                                  color: Colors.black,
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(bottom: 8.0),
                              child: Text("FreeLance",
                                style: Responsive.isDesktop(context)
                                    ? Theme.of(context).textTheme.headline4!.copyWith(
                                  fontSize: 13,
                                  color: Colors.black,
                                )
                                    : Theme.of(context).textTheme.headline6!.copyWith(
                                  fontSize: 10,
                                  color: Colors.black,
                                ),
                              ),
                            ),
                            SizedBox(height: defaultPadding / 2),
                          ],
                        ),
                        const SizedBox(width:defaultPadding*2),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(bottom: 8.0),
                              child: Text("|        ShadyBoshra2022@gmail.com",
                                style: Responsive.isDesktop(context)
                                    ? Theme.of(context).textTheme.headline4!.copyWith(
                                  fontSize: 13,
                                  color: Colors.black54,
                                )
                                    : Theme.of(context).textTheme.headline6!.copyWith(
                                  fontSize: 10,
                                  color: Colors.black54,
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(bottom: 8.0),
                              child: Text("|        +20 1100195819",
                                style: Responsive.isDesktop(context)
                                    ? Theme.of(context).textTheme.headline4!.copyWith(
                                  fontSize: 13,
                                  color: Colors.black54,
                                )
                                    : Theme.of(context).textTheme.headline6!.copyWith(
                                  fontSize: 10,
                                  color: Colors.black54,
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(bottom: 8.0),
                              child: Text("|        Cairo, Egypt",
                                style: Responsive.isDesktop(context)
                                    ? Theme.of(context).textTheme.headline4!.copyWith(
                                  fontSize: 13,
                                  color: Colors.black54,
                                )
                                    : Theme.of(context).textTheme.headline6!.copyWith(
                                  fontSize: 10,
                                  color: Colors.black54,
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(bottom: 8.0),
                              child: Text("|        Available",
                                style: Responsive.isDesktop(context)
                                    ? Theme.of(context).textTheme.headline4!.copyWith(
                                  fontSize: 13,
                                  color: Colors.black54,
                                )
                                    : Theme.of(context).textTheme.headline6!.copyWith(
                                  fontSize: 10,
                                  color: Colors.black54,
                                ),
                              ),
                            ),
                            SizedBox(height: defaultPadding / 2),
                          ],
                        ),
                      ],
                    ),
                    const SizedBox(height:defaultPadding),
                ],)
              :Row(
                children: [
                  Row(
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(bottom: 8.0),
                            child: Text("Date of Birth",
                              style: Responsive.isDesktop(context)
                                  ? Theme.of(context).textTheme.headline4!.copyWith(
                                fontSize: 13,
                                color: Colors.black,
                              )
                                  : Theme.of(context).textTheme.headline6!.copyWith(
                                fontSize: 10,
                                color: Colors.black,
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(bottom: 8.0),
                            child: Text("Nationality",
                              style: Responsive.isDesktop(context)
                                  ? Theme.of(context).textTheme.headline4!.copyWith(
                                fontSize: 13,
                                color: Colors.black,
                              )
                                  : Theme.of(context).textTheme.headline6!.copyWith(
                                fontSize: 10,
                                color: Colors.black,
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(bottom: 8.0),
                            child: Text("Martial",
                              style: Responsive.isDesktop(context)
                                  ? Theme.of(context).textTheme.headline4!.copyWith(
                                fontSize: 13,
                                color: Colors.black,
                              )
                                  : Theme.of(context).textTheme.headline6!.copyWith(
                                fontSize: 10,
                                color: Colors.black,
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(bottom: 8.0),
                            child: Text("Military",
                              style: Responsive.isDesktop(context)
                                  ? Theme.of(context).textTheme.headline4!.copyWith(
                                fontSize: 13,
                                color: Colors.black,
                              )
                                  : Theme.of(context).textTheme.headline6!.copyWith(
                                fontSize: 10,
                                color: Colors.black,
                              ),
                            ),
                          ),
                          SizedBox(height: defaultPadding / 2),
                        ],
                      ),
                      const SizedBox(width:defaultPadding*2),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(bottom: 8.0),
                            child: Text("|        08 Aug, 1998",
                              style: Responsive.isDesktop(context)
                                  ? Theme.of(context).textTheme.headline4!.copyWith(
                                fontSize: 13,
                                color: Colors.black54,
                              )
                                  : Theme.of(context).textTheme.headline6!.copyWith(
                                fontSize: 10,
                                color: Colors.black54,
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(bottom: 8.0),
                            child: Text("|        Egyptian",
                              style: Responsive.isDesktop(context)
                                  ? Theme.of(context).textTheme.headline4!.copyWith(
                                fontSize: 13,
                                color: Colors.black54,
                              )
                                  : Theme.of(context).textTheme.headline6!.copyWith(
                                fontSize: 10,
                                color: Colors.black54,
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(bottom: 8.0),
                            child: Text("|        Single",
                              style: Responsive.isDesktop(context)
                                  ? Theme.of(context).textTheme.headline4!.copyWith(
                                fontSize: 13,
                                color: Colors.black54,
                              )
                                  : Theme.of(context).textTheme.headline6!.copyWith(
                                fontSize: 10,
                                color: Colors.black54,
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(bottom: 8.0),
                            child: Text("|        Final Exemption",
                              style: Responsive.isDesktop(context)
                                  ? Theme.of(context).textTheme.headline4!.copyWith(
                                fontSize: 13,
                                color: Colors.grey,
                              )
                                  : Theme.of(context).textTheme.headline6!.copyWith(
                                fontSize: 10,
                                color: Colors.grey,
                              ),
                            ),
                          ),
                          const SizedBox(height: defaultPadding / 2),
                        ],
                      ),
                    ],
                  ),
                  const SizedBox(width:defaultPadding *4),
                  Row(
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(bottom: 8.0),
                            child: Text("Email",
                              style: Responsive.isDesktop(context)
                                  ? Theme.of(context).textTheme.headline4!.copyWith(
                                fontSize: 13,
                                color: Colors.black,
                              )
                                  : Theme.of(context).textTheme.headline6!.copyWith(
                                fontSize: 10,
                                color: Colors.black,
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(bottom: 8.0),
                            child: Text("Phone",
                              style: Responsive.isDesktop(context)
                                  ? Theme.of(context).textTheme.headline4!.copyWith(
                                fontSize: 13,
                                color: Colors.black,
                              )
                                  : Theme.of(context).textTheme.headline6!.copyWith(
                                fontSize: 10,
                                color: Colors.black,
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(bottom: 8.0),
                            child: Text("Address",
                              style: Responsive.isDesktop(context)
                                  ? Theme.of(context).textTheme.headline4!.copyWith(
                                fontSize: 13,
                                color: Colors.black,
                              )
                                  : Theme.of(context).textTheme.headline6!.copyWith(
                                fontSize: 10,
                                color: Colors.black,
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(bottom: 8.0),
                            child: Text("FreeLance",
                              style: Responsive.isDesktop(context)
                                  ? Theme.of(context).textTheme.headline4!.copyWith(
                                fontSize: 13,
                                color: Colors.black,
                              )
                                  : Theme.of(context).textTheme.headline6!.copyWith(
                                fontSize: 10,
                                color: Colors.black,
                              ),
                            ),
                          ),
                          SizedBox(height: defaultPadding / 2),
                        ],
                      ),
                      const SizedBox(width:defaultPadding*2),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(bottom: 8.0),
                            child: Text("|        ShadyBoshra2022@gmail.com",
                              style: Responsive.isDesktop(context)
                                  ? Theme.of(context).textTheme.headline4!.copyWith(
                                fontSize: 13,
                                color: Colors.black54,
                              )
                                  : Theme.of(context).textTheme.headline6!.copyWith(
                                fontSize: 10,
                                color: Colors.black54,
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(bottom: 8.0),
                            child: Text("|        +20 1100195819",
                              style: Responsive.isDesktop(context)
                                  ? Theme.of(context).textTheme.headline4!.copyWith(
                                fontSize: 13,
                                color: Colors.black54,
                              )
                                  : Theme.of(context).textTheme.headline6!.copyWith(
                                fontSize: 10,
                                color: Colors.black54,
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(bottom: 8.0),
                            child: Text("|        Cairo, Egypt",
                              style: Responsive.isDesktop(context)
                                  ? Theme.of(context).textTheme.headline4!.copyWith(
                                fontSize: 13,
                                color: Colors.black54,
                              )
                                  : Theme.of(context).textTheme.headline6!.copyWith(
                                fontSize: 10,
                                color: Colors.black54,
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(bottom: 8.0),
                            child: Text("|        Available",
                              style: Responsive.isDesktop(context)
                                  ? Theme.of(context).textTheme.headline4!.copyWith(
                                fontSize: 13,
                                color: Colors.black54,
                              )
                                  : Theme.of(context).textTheme.headline6!.copyWith(
                                fontSize: 10,
                                color: Colors.black54,
                              ),
                            ),
                          ),
                          const SizedBox(height: defaultPadding / 2),
                        ],
                      ),
                    ],
                  ),
                ],)
      ],
    );
  }
}
