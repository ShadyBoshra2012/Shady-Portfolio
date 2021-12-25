import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:portfolio/constants.dart';
import 'package:portfolio/responsive.dart';
import 'package:portfolio/ui/home/components/about_me/components/education.dart';
import 'package:portfolio/ui/home/components/about_me/components/human_languages.dart';
import 'package:portfolio/ui/home/components/about_me/components/personal_information.dart';

class Info extends StatelessWidget {
  const Info({
    Key? key,
  }) : super(key: key);

  // in this class work experience, environments
  @override
  Widget build(BuildContext context) {
    return Container(
      color: secondaryColor,
      child: Padding(
        padding: const EdgeInsets.fromLTRB(12,18,12,8),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // intro text
            Text(
              "I'M Shady Boshra",
              style: Responsive.isDesktop(context)
                  ? Theme.of(context).textTheme.headline4!.copyWith(
                fontWeight: FontWeight.bold,
                fontSize: 45,
                color: Colors.black,
              ) :Responsive.isMobileLarge(context)?
              Theme.of(context).textTheme.headline6!.copyWith(
                fontWeight: FontWeight.bold,
                fontSize: 30,
                color: Colors.black,
              )
              :Theme.of(context).textTheme.headline6!.copyWith(
                fontWeight: FontWeight.bold,
                fontSize: 45,
                color: Colors.black,
              ),
            ),
            // position shady's job
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Mid Level ",
                  style: Responsive.isDesktop(context)
                      ? Theme.of(context).textTheme.headline4!.copyWith(
                    fontSize: 20,
                    color: Colors.black,
                  )
                      : Responsive.isMobileLarge(context)?
                      Theme.of(context).textTheme.headline6!.copyWith(
                        fontSize: 14,
                        color: Colors.black,
                      )
                      :Theme.of(context).textTheme.headline6!.copyWith(
                    fontSize: 20,
                    color: Colors.black,
                  ),
                ),
                Text(
                  "Flutter ",
                  style: Responsive.isDesktop(context)
                      ? Theme.of(context).textTheme.headline4!.copyWith(
                    fontSize: 20,
                    color: primaryColor,
                  )
                      : Responsive.isMobileLarge(context)?
                Theme.of(context).textTheme.headline6!.copyWith(
                  fontSize: 14,
                  color: primaryColor,
                )
                    :Theme.of(context).textTheme.headline6!.copyWith(
                  fontSize: 20,
                  color: primaryColor,
                ),
                ),
                Text(
                  "developer",
                  style: Responsive.isDesktop(context)
                      ? Theme.of(context).textTheme.headline4!.copyWith(
                    fontSize: 20,
                    color: Colors.black,
                  )
                      : Responsive.isMobileLarge(context)?
                Theme.of(context).textTheme.headline6!.copyWith(
                  fontSize: 14,
                  color: Colors.black,
                )
                    :Theme.of(context).textTheme.headline6!.copyWith(
                  fontSize: 20,
                  color: Colors.black,
                ),
                ),
              ],
            ),
            const SizedBox(height: defaultPadding),
            Responsive.isDesktop(context)||Responsive.isLaptop(context)
                ? Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                    Responsive.isMobileLarge(context)?
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: const [
                      Education(),
                      SizedBox(width: defaultPadding *4),
                      HumanLanguages(),
                    ],):Row(children: const [
                      Education(),
                      SizedBox(width: defaultPadding *4),
                      HumanLanguages(),
                    ],),
              ],):
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: const [
              Education(),
              HumanLanguages(),
            ],),
            PersonalInformation(),
            const SizedBox(height: defaultPadding ),
            //button cv
            ElevatedButton(
              onPressed: () {},
              style: TextButton.styleFrom(
                padding: const EdgeInsets.symmetric(
                    horizontal: defaultPadding * 2, vertical: defaultPadding),
                backgroundColor: primaryColor,
              ),
              child: const Text(
                "DOWNLOAD CV",
                style: TextStyle(color: Colors.white),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
