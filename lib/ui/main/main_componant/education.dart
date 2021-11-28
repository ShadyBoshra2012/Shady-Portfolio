import 'package:flutter/material.dart';
import 'package:portfolio/constants.dart';
import 'package:portfolio/responsive.dart';

class Education extends StatelessWidget {
  const Education({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 1.23,
      child: Card(
        elevation: 8,
        color: secondaryColor,
        child: Column(
          children: [
            Spacer(flex: 1),
            Text(
              "EDUCATION",
              style: Responsive.isDesktop(context)
                  ? Theme.of(context).textTheme.headline6!.copyWith(
                        fontWeight: FontWeight.bold,
                        color: Color(0xffd5bc35),
                      )
                  : Theme.of(context).textTheme.headline3!.copyWith(
                        fontWeight: FontWeight.bold,
                        fontSize: 28,
                        color: Color(0xffd5bc35),
                      ),
            ),
            Spacer(flex: 1),
            Text(
              "NATIONAL EGYPTIAN\nE-LEARNING UNIVERSITY",
              textAlign: TextAlign.center,
              style: Responsive.isDesktop(context)
                  ? Theme.of(context).textTheme.headline4!.copyWith(
                        fontWeight: FontWeight.bold,
                        fontSize: 15,
                        color: Colors.black,
                      )
                  : Theme.of(context).textTheme.headline5!.copyWith(
                        fontWeight: FontWeight.bold,
                        fontSize: 10,
                        color: Colors.black,
                      ),
            ),
            Text(
              "B.A. in Information Technology\nGPA: 3.32\nGraduated 2020 ",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontWeight: FontWeight.w100,
                height: 1.5,
                color: Color(0xFF726F6F),
              ),
            ),
            Spacer(flex: 2),
          ],
        ),
      ),
    );
  }
}
